class User < ApplicationRecord
  has_many :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true, length: {maximum: 50}

  #登録時にメールアドレスを不要とする
  def email_required?
    false
  end
       
  def email_changed?
    false
  end
end
