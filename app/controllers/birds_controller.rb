class BirdsController < ApplicationController

    def index
        @birds = Bird.all
        render json: @birds
    end

    def show
        @bird = Bird.find(params[:id])
        render json: @bird
    end

    def create
        @bird = Bird.create(
            color: params[:color],
            size: params[:size],
            age: params[:age]
        )
        render json: @bird
    end

    def update
        @bird = Bird.find(params[:id])
        @bird.update(
            color: params[:color]
        )
        render json: @bird

    end

    def destroy
        @bird = Bird.find(params[:id])
        @bird.destroy
        render json: "Bird ##{@bird.id} has flown away."
    end
end
