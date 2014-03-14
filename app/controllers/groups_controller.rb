class GroupsController < AuthenticatedUser
  expose(:groups, ancestor: :current_user)
  expose(:group, attributes: :group_params)
  expose(:search) { groups.search(params[:q]) }
  expose(:filtered_groups) { search.result.page(params[:page]) }
  expose(:group_creator) { GroupCreator.new(self)}
  expose(:decorated_group){ group.decorate }
  expose(:decorated_groups){ filtered_groups.decorate}

  def create
    if group_creator.save
      redirect_to group, notice: t('groups.create.success')
    else
      render action: 'new'
    end
  end

  def update
    if group.save
      redirect_to group, notice: t('groups.update.success')
    else
      render action: 'edit'
    end
  end

  def destroy
    group.destroy
    redirect_to groups_url, notice: t('groups.destroy.success')
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
