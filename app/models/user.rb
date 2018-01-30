class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  #
  # Validations
  #
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }, presence: true,
            uniqueness: { case_sensitive: false }
  validates :name, presence: true
  validates :bio, length: { maximum: 255 }, allow_blank: true
end
