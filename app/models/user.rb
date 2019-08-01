class User < ApplicationRecord
  has_many :products
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def is_admin?
    role == "admin"
  end

  def is_staff?
    role == "staff"
  end

  def is_customer?
    role == "customer"
  end
end
