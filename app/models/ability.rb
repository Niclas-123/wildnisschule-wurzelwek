class Ability
  include CanCan::Ability

  def initialize(current_user)
    if current_user
      if current_user.admin
        can :manage, :all
      else
        can [:create, :read], GuestbookEntry
        can [:update, :destroy], GuestbookEntry, user_id: current_user.id

        can [:read, :edit, :update], User, id: current_user.id
        can :read, [SeminarInstance, SeminarType, Seminar, EquipmentList, Location, Post]

        can :create, Booking
        can :account_abfrage, Booking
      end
    else
      can :read, [SeminarInstance, SeminarType, Seminar, EquipmentList, Location, Post, GuestbookEntry]

      can :new, GuestbookEntry
      can [:new, :create], User
      can :create, Booking
      can :account_abfrage, Booking
    end
  end
end
