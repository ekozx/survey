class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :organizaton
  after_invitation_accepted :email_invited_by

  def organization_name
    self.organization.name
  end

  def email_invited_by
  end
end
