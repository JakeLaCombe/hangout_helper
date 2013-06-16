class GroupController < ApplicationController
  before_filter :signed_in_user
  def create
  	#@group = Group.new(params[:group])
    @group = current_person.build_owned_group(params[:group])
  	if not @group.nil? and @group.save
      redirect_to @group
    else
      if @group.nil?
        @group = Group.new
      end

      render 'create'
    end
  end

  def new
  	@group = Group.new(params[:group])
  	if not @group.nil? and @group.save
      redirect_to group_path(@group)
    else
      if @group.nil?
        @group = Group.new
      end

      render 'create'
    end
  end

  def index
  end

  def show
  	@group = Group.find(params[:id])
  end

  private

  def signed_in_user
    redirect_to root_url unless signed_in?
  end
end
