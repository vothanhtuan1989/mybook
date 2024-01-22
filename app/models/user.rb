class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  before_destroy :check_root_user?

  has_many :books, dependent: :destroy

  def check_root_user?
    throw :abort if root_user?
  end
end
