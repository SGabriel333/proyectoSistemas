class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
       

  @skip = false

  def skip_notifications!()
    skip_confirmation_notification!
    @skip = true
  end

  def email_changed?
    return false if @skip
    super
  end

  def encrypted_password_changed?
    return false if @skip
    super
  end
end
