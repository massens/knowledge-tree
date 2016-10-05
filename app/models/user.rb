class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
  acts_as_token_authenticatable

  has_many :nodes, dependent: :destroy
  has_many :walls, dependent: :destroy

  def get_authentication_token
	self.save if self.authentication_token.blank?
	return self.authentication_token
  end

  def share_link(url)
  	url+'?user_email='+self.email+'&user_token='+ self.get_authentication_token
  end
end
