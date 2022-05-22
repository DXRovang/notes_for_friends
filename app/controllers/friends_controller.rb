class FriendsController < ApplicationController
  def index
    if Friend.all.length === 0
      Rails.application.load_seed
    end
    @friends = Friend.all
  end

  def edit
    if Friend.all.length === 0
      Rails.application.load_seed
    end
    @friend = Friend.all.sample
  end
  def update
    @friend = Friend.find_by(id: params[:id])
    @friend.delete
    redirect_to friends_path
  end

  def show
    
  end

  def friend_params
    params.require(:friend).permit(:name, :id)
  end
end
