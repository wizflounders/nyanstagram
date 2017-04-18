class TopController < ApplicationController
  def index
    @randoms = Tweet.all.includes(:user).sample(4)
    @tweets = Tweet.order(created_at: :desc).page(params[:page]).per(5)
    @comment = Comment.new


  end
end
