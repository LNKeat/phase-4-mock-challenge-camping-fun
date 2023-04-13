class ActivitiesController < ApplicationController
    def index 
        activities = Activity.all 
        render json:activities
    end

    def show 
        activity = find_activity
        render json:activity
    end



    def find_activity
        activity = Activity.find(params[:id])
    end
end
