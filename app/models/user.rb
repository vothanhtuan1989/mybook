class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  before_destroy :check_root_user?

  has_many :books,
           dependent: :destroy

  has_one :book_profile,
          dependent: :destroy

  has_many :user_groups,
          dependent: :destroy

  has_many :groups,
           through: :user_groups

  def check_root_user?
    throw :abort if root_user?
  end

  def full_name
    email
  end
end
