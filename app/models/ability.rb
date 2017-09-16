class Ability
  include CanCan::Ability
 
  def initialize(user)
    if user
      if user.kind == 'technicianm'
        # can :manage, :all
        can :access, :rails_admin
        can :dashboard
        can :manage, Institution
        can :manage, Donor
        can :manage, Educational
      elsif user.kind == 'supervision'
        # can :manage, :all
        can :access, :rails_admin
        can :dashboard
        can :manage, Institution
        can :manage, Donor
        can :manage, Educational
        can :manage, User, kind: :technicianm
      elsif user.kind == 'program_manager'
        # can :manage, :all
        can :access, :rails_admin
        can :dashboard
        can :read, Institution
        can :read, Donor
        can :read, Educational
        can :manage, User , kind: :technicianm, kind: :unit_manager, kind: :supervision
    elsif user.kind == 'unit_manager'
      # can :manage, :all
        can :access, :rails_admin
        can :dashboard
        can :read, Institution
        can :read, Donor
        can :read, Educational
      elsif user.kind == 'admin'
        can :manage, :all

      end
    end
   end
end