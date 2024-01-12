class Group < ApplicationRecord
  has_many :user_groups, dependent: :destroy
  has_many :book_groups, dependent: :destroy

  has_many :books, through: :book_groups
  has_many :users, through: :user_groups

  has_many :join_requests, dependent: :destroy, class_name: 'JoinRequest'
  has_many :invitation_requests, dependent: :destroy, class_name: 'InvitationRequest'

  enum group_type: [:public_group, :private_group]
  enum status: [:active, :archive]

  has_rich_text :description
  # has_one_attached :avatar

  def creator?(user_id)
    role?(user_id, 'creator')
  end

  def admin?(user_id)
    role?(user_id, 'admin')
  end

  def member?(user_id)
    role?(user_id, 'member')
  end

  def belongs_to_group?(user_id)
    role?(user_id, 'belongs_to_group')
  end

  private

  def role?(user_id, type)
    return false if user_groups.blank?
    user_group = user_groups.find_by(user_id: user_id)
    return false if user_group.nil?

    case type
    when 'creator'
      user_group.creator?
    when 'admin'
      user_group.admin?
    when 'member'
      user_group.member?
    else
      true
    end
  end
end
