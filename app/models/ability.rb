# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    alias_action :create, :update, :destroy, to: :writes

    if user.admin?
      can :manage, :all
    end

    if user.reader?
      can :read, Home
      can [:update, :destroy], User, id: user.id
      can :read, Note
    end

    if user.user?
      can :read, Home
      can [:update, :destroy], User, id: user.id
      can :manage, Note, user: user
    end
  end
end
