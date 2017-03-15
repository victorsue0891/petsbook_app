class User < ApplicationRecord
  acts_as_token_authenticatable


  # Invalidate the user's authentication token and set a new one
  #
  # user - a token authenticatable User
  #
  # Returns the user's new authentication token
  def reset_authentication_token!
    self.update(:authentication_token => nil)
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :group, optional: true
end
