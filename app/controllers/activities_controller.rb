class ActivitiesController < ApplicationController

    def index
        activity = Activity.all
        render json: activity
    end

    def destroy
        activity = Activity.find!(params[:id])
        if activity.valid?
        activity.destroy
        head :no_content
        else 
            render json: {error: "Activity not found"}, status: :not_found
        end
    end

    
end
