module Rodauth
  ChangePassword = Feature.define(:change_password) do
    route 'change-password'
    notice_flash 'Your password has been changed'
    error_flash 'There was an error changing your password'
    view 'change-password', 'Change Password'
    after
    before
    additional_form_tags
    button 'Change Password'
    redirect
    require_account

    auth_value_method :new_password_label, 'New Password'
    auth_value_method :new_password_param, 'new_password'

    auth_value_methods :change_password_requires_password?

    get_block do
      change_password_view
    end

    post_block do
      catch_error do
        if change_password_requires_password? && !password_match?(param(password_param))
          throw_error(:password, invalid_password_message)
        end

        password = param(new_password_param)
        unless password == param(password_confirm_param)
          throw_error(:new_password, passwords_do_not_match_message)
        end

        if password_match?(password) 
          throw_error(:new_password, same_as_existing_password_message)
        end

        unless password_meets_requirements?(password)
          throw_error(:new_password, password_does_not_meet_requirements_message)
        end

        transaction do
          before_change_password
          set_password(password)
          after_change_password
        end
        set_notice_flash change_password_notice_flash
        redirect change_password_redirect
      end

      set_error_flash change_password_error_flash
      change_password_view
    end

    def change_password_requires_password?
      modifications_require_password?
    end
  end
end
