class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    !record.private? || record.user == user || record.users.include?(user) || (user.present? && user.admin?)
  end

  def create?
    user.present?
  end

  def new?
    create?
  end

  def update?
    user.present? && (!record.private? || record.user == user || record.users.include?(user) || user.admin?)
  end

  def edit?
    update?
  end

  def destroy?
   update?
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
