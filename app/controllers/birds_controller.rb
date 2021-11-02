class BirdsController < ApplicationController
    def show
        bird = Bird.find(params[:id])
        render json: bird
      rescue ActiveRecord::RecordNotFound
        render json: "Bird not found", status: :not_found
      end 
    
    def index
        birds = Bird.all
        render json: birds
    end 
end
