class GroupCreator
  delegate :group, to: :@controller

  def initialize(controller)
    @controller = controller
  end

  def save
    if group.save
      add_all_friend_to_group
    end
  end
private
  def add_all_friend_to_group
    group.friends << group.creator.friends
  end
end