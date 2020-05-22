# frozen-string-literal: true

require_relative '../../cors'

Roda::RodaPlugins.register_plugin(:cors, Cors)


