class CategoryPolicy < BasePolicy
  def method_missing(m, *arg, &block)
    Current.user.admin?
  end
end