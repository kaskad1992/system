class Useeer < ActiveRecord::Base
  
  belongs_to :constituency
  
  ROLES = %w[coordinator1 coordinator2 coordinator3 admin]

  acts_as_authentic do |config|
    config.validate_login_field = false
    config.validate_password_field = false
    config.crypted_password_field = :crypted_password
    config.require_password_confirmation = true
    config.maintain_sessions = false
  end

  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end

end
