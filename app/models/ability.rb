class Ability
  include AuthcanEasyroller::Ability

# When you're ready to add your own abilities or override the defaults
# provided, simply uncomment the following lines and add your can and
# cannot methods below ae_ability_defaults(current_user)
#
=begin
  def initialize(current_user)
    ae_ability_defaults(current_user)

    # Below is an example customization that allows everyone
    # (including non-authenticated users) to manage all users
    can :manage, :users

    # To ensure they are applying the changes only to an
    # authenticated user, simply wrap the calls with an if
    # statement as below
    if current_user
      can :manage, :all
    end
  end
=end

end
