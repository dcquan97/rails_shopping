class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #gem bcrypt
  has_secure_password

  has_one  :cart, ->{unpaid}, class_name: Cart.name
  has_one  :unpaid_item, through: :cart, source: :cart_items
  has_one  :unpaid_product, through: :unpaid_item, source: :product

  has_many :carts, ->{paid}, class_name: Cart.name
  has_many :cart_items, through: :carts
  has_many :products, through: :cart_items, source: :product
  has_many :paid_products, through: :cart_items, source: :product

end
