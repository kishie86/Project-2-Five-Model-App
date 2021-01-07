class MicroGoalsController < ApplicationController
    def index
        @micro_goals = MicroGoal.all
    end

    def show
        @micro_goal = MicroGoal.find_by(params[:id])
    end

    def new
        @micro_goal = MicroGoal.new
    end

    def create 
        @micro_goal = MicroGoal.create(micro_params)
        redirect_to 
    end

    def edit
        @micro_goal = MicroGoal.find_by(params[:id])
    end 

    def update
        @micro_goal = MicroGoal.find_by(id: params[:id])
         @micro_goal.update(micro_params)
         redirect_to 
    end

    def destroy
        @micro_goal = MicroGoal.find_by(id: params[:id])
         @micro_goal.destroy
         redirect_to 
    end

    def micro_params
       params.require(micro_goals).permit(:dealine, :content, :goal_id)
    end
end
