class GoalsController < ApplicationController
    def index
        @goals = Goal.all
    end

    def show
        @goal = Goal.find(params[:id])
    end

    def new
        @goal = Goal.new
    end

    def create
        @goal = Goal.create(goal_params)

        redirect_to goals_path
    end

    def edit
        @goal = Goal.find(params[:id])
    end

    def update
        @goal = Goal.find_by(id: params[:id])
        @goal.update(goal_params)

        redirect_to goal_path
    end

    def destroy
        @goal = Goal.find_by(id: params[:id])
        @goal.delete

        redirect_to goals_path
    end

    private
    def goal_params
        params.require(:goal).permit(:name, :description, :journal_id)
    end
end
