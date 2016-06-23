class Ability < ActiveRecord::Base
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    # Can READ anything
    can :read, :all

    if user.persisted? # in db, so logged in
      # Can MANAGE (create, read, update, destroy, etc.) own Post
      can :manage, Post, user: user
      can :manage, Profile, user: user
      can :manage, Comment, user:user

      # Can CREATE and DESTROY own Like
      can :create,  Like, user: user
      can :destroy, Like, user: user

    end
  end
end
end
