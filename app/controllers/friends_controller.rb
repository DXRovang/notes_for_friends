class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def edit
    @friend = Friend.all.sample
  end
  def update
    @friend = Friend.find_by(id: params[:id])
    @friendName = @friend.name
    binding.pry
    # Friend.all.delete_at(@friend.id)
    redirect_to friends_path
  end

  def friend_params
    params.require(:friend).permit(:name, :id)
  end
end
