class MicroGoalsController < ApplicationController
    def index
        @micro_goals = MicroGoal.all
    end

    def show
        @micro_goal = MicroGoal.find_by(id: params[:id])
    end

    def new
        @micro_goal = MicroGoal.new
    end

    def create 
        @micro_goal = MicroGoal.create(micro_params)
        if @micro_goal.valid?
            @micro_goal.save
        redirect_to micro_goal_path(@micro_goal)
            
        #redirect_to micro_goals_path
        else
        render :new
    end
end

    def edit
        @micro_goal = MicroGoal.find_by(params[:id])
    end 

    def update
        @micro_goal = MicroGoal.find_by(id: params[:id])
         @micro_goal.update(micro_params)
         redirect_to micro_goal_path
    end

    def destroy
        @micro_goal = MicroGoal.find_by(id: params[:id])
         @micro_goal.destroy
         redirect_to micro_goals_path
    end

    def micro_params
       params.require(:micro_goal).permit(:deadline, :content, :goal_id)
    end
end
