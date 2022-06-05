class Note < ApplicationRecord
  belongs_to :user

  default_scope { order(created_at: :desc) }

  validates :user, :title, :text, presence: true
  validates :title, uniqueness: { scope: :user }
end
