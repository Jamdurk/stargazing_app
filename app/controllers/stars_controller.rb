class StarsController < ApplicationController

        def index
          @stars = Star.all
        end
      
        def new
          @star = Star.new
        end
      
        def create
          @star = Star.new(star_params)
          if @star.save
            redirect_to stars_path, notice: 'Star was successfully created.'
          else
            render :new
          end
        end
      
        private
      
        def star_params
          params.require(:star).permit(:name, :description, :distance, :lifespan, :fact, :size)
        end

end
