class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end
    
    def new
        @tweet = Tweet.new
    end
    
    def create
        t = Tweet.new(message: params[:tweet][:message])
        t.user = User.first
        t.save
        redirect_to tweets_path
    end
    
    def destroy
        User.find(params[:id]).destroy
        redirect_to tweets_path
    end
end
