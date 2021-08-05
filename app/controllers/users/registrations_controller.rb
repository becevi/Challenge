# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  include Accessible
  skip_before_action :check_resource, except: [:new, :create]

  def after_sign_up_path_for(resource)
    root_path 
  end

end
