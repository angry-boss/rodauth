# frozen_string_literal: true

require "cose/key/curve"
require "cose/key/curve_key"
require "openssl"

module COSE
  module Key
    class EC2 < CurveKey
      LABEL_Y = -3

      KTY_EC2 = 2

      def self.enforce_type(map)
        if map[LABEL_KTY] != KTY_EC2
          raise "Not an EC2 key"
        end
      end

      def self.from_pkey(pkey)
        curve = Curve.by_pkey_name(pkey.group.curve_name) || raise("Unsupported EC curve #{pkey.group.curve_name}")

        case pkey
        when OpenSSL::PKey::EC::Point
          public_key = pkey
        when OpenSSL::PKey::EC
          public_key = pkey.public_key
          private_key = pkey.private_key
        else
          raise "Unsupported"
        end

        if public_key
          bytes = public_key.to_bn.to_s(2)[1..-1]

          coordinate_length = bytes.size / 2

          x = bytes[0..(coordinate_length - 1)]
          y = bytes[coordinate_length..-1]
        end

        if private_key
          d = private_key.to_s(2)
        end

        new(crv: curve.id, x: x, y: y, d: d)
      end

      attr_reader :y

      def initialize(y: nil, **keyword_arguments) # rubocop:disable Naming/UncommunicativeMethodParamName
        if (!y || !keyword_arguments[:x]) && !keyword_arguments[:d]
          raise ArgumentError, "Both x and y are required if d is missing"
        else
          super(**keyword_arguments)

          @y = y
        end
      end

      def map
        map = super.merge(
          Base::LABEL_KTY => KTY_EC2,
          LABEL_Y => y,
        )

        map.reject { |_k, v| v.nil? }
      end

      def to_pkey
        if curve
          group = OpenSSL::PKey::EC::Group.new(curve.pkey_name)
          pkey = OpenSSL::PKey::EC.new(group)
          public_key_bn = OpenSSL::BN.new("\x04" + x + y, 2)
          public_key_point = OpenSSL::PKey::EC::Point.new(group, public_key_bn)
          pkey.public_key = public_key_point

          if d
            pkey.private_key = OpenSSL::BN.new(d, 2)
          end

          pkey
        else
          raise "Unsupported curve #{crv}"
        end
      end

      def curve
        Curve.find(crv)
      end

      def self.keyword_arguments_for_initialize(map)
        super.merge(y: map[LABEL_Y])
      end
    end
  end
end
