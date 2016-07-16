class TweetsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def edit
    tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.upda
  end

  def show
    tweet = Tweet.find(params[:id])
  end

  private
  def tweet_params
    params.permit(:image, :text)
  end

  def move_to_index
    redirect_to controller: :tweets, action: :index unless user_signed_in?
  end

  
end
