class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :authentication_keys => [:age]
  # validates :age, presence: true, uniqueness: true
  has_many :items

  def email_required?
    false
  end

  def email_changed?
    false
  end
  
  # def will_save_change_to_email?
  #   false
  # end
  def password_required?
    false
  end

end
