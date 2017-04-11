class TopController < ApplicationController
  def index
    @randoms = Tweet.limit(4)
    @tweets = Tweet.order(created_at: :desc).page(params[:page]).per(5)
  end
end
