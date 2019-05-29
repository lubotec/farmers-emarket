class FarmerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    record.user.role == 'Farmer'
  end

  def create?
    record.user.role == 'Farmer'
  end

  def show?
    return true
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
    # - record: the farmer passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  # def destroy?
  #   record.user == user
  # end

end
