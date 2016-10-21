class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username]
  
  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }
  
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  
end
