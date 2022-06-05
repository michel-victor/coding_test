class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :lockable, :timeoutable, :trackable

  enum role: [:user, :reader, :admin]

  has_many :notes, dependent: :destroy

  default_scope { order(created_at: :desc) }

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  def user?
    role == 'user'
  end

  def reader?
    role == 'reader'
  end

  def admin?
    role == 'admin'
  end
end
