class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :confirmable
  has_many :history_views, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :viewed_products, through: :history_views, source: :product
  enum role: {customer: 0, admin: 1}
  mount_uploader :avatar, PictureUploader

  validates :name, presence: true,
    length: {maximum: Settings.user.name.max_length}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    length: {maximum: Settings.user.email.max_length},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  # has_secure_password
  # validates :password, presence: true,
  #   length: {minimum: Settings.user.password.min_length},

  before_save :downcase_email
  scope :by_name, ->{order(name: :asc)}

  attr_accessor :skip_password_validation

  def downcase_email
    self.email = email.downcase
  end
end
