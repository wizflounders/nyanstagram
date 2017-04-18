class TweetsController < ApplicationController
  def new
     @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(create_params)
    if @tweet.save
    redirect_to :root and return
    else render 'new'
    end
  end

  def show
    @tweet =Tweet.find(params[:id])
    @comments = @tweet.comments.includes(:user).order(created_at: :desc)
  end

  private
   def create_params
     params.require(:tweet).permit(:image, :text).merge(user_id: current_user.id)
   end
end
