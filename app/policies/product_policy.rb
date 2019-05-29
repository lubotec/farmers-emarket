class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.role == 'Farmer'
  end

  def create?
    user.role == 'Farmer'
  end

  def my_products?
    record.farmer_id == user.farmer.id
  end

  def show?
    return true
  end

  def edit?
    record.farmer_id == user.farmer.id
  end

  def update?
    record.farmer_id == user.farmer.id
  end

  def destroy?
    record.farmer_id == user.farmer.id
  end

end
