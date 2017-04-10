class TopController < ApplicationController
  def index
    @tweets = Tweet.order(created_at: :desc).page(params[:page]).per(5)
  end
end
