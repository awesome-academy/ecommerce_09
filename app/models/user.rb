class User < ApplicationRecord
  has_many :history_views, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :viewed_products, through: :history_views, source: :product
  enum role: {customer: 0, admin: 1}
end