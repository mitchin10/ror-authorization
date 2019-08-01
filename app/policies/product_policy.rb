class ProductPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    user.present?
  end

  def update?
    return true if user.present? && user.is_admin?

    user.present? && user == product.user
  end

  def destroy?
    user.present? && user.is_admin?
  end

  private

    def product
      record
    end
end
