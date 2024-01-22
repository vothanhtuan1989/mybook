class GroupsController < AdminController
  before_action :set_group, only: %i[ show edit update destroy books members join_requests invitation_requests]

  # GET /groups
  def index
    user_groups = current_user.user_groups
    group_creator_ids = user_groups.where(role: 'creator').pluck(:group_id).uniq
    @groups = Group.where(id: group_creator_ids)

    group_join_ids = user_groups.where.not(role: 'creator').pluck(:group_id).uniq
    @join_groups = Group.where(id: group_join_ids)
  end

  # GET /groups/1
  def show
  end

  def books
    @books = Book.where(user_id: @group.users.ids)
  end

  def members
    @users = @group.user_groups.includes(:user)
  end

  def invitation_requests
    @invitation_requests = @group.invitation_requests
  end

  def join_requests
    @join_requests = @group.join_requests
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  def create
    @group = Group.new(group_params)

    if @group.save
      current_user.user_groups.create(
        group_id: @group.id,
        role: 'creator',
        status: 'approved'
      )

      redirect_to @group, notice: "Group was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      redirect_to @group, notice: "Group was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy
    redirect_to groups_url, notice: "Group was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_params
      params.require(:group).permit(:name, :user_groups_count, :book_groups_count, :start_date, :description, :group_type, :avatar, :status, :member_number_limitation, :book_number_required, :join_fee)
    end
end
