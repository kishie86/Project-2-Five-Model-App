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
        # @goal = Goal.create(goal_params)

        # redirect_to goals_path

        # Create a brand new, unsaved, not-yet-validated Post object from the form.
        @goal = Goal.new(goal_params)

        # Run the validations WITHOUT attempting to save to the database, returning
        # true if the Post is valid, and false if it's not.
        if @goal.valid?
            # If--and only if--the post is valid, do what we usually do.
            @goal.save
            # This returns a status_code of 302, which instructs the browser to
            # perform a NEW REQUEST! (AKA: throw @post away and let the show action
            # worry about re-reading it from the database)
            redirect_to goal_path(@goal)
        else
            # If the post is invalid, hold on to @post, because it is now full of
            # useful error messages, and re-render the :new page, which knows how
            # to display them alongside the user's entries.
            render :new
        end
    end

    def edit
        @goal = Goal.find(params[:id])
    end

    def update
        @goal = Goal.find_by(id: params[:id])
        if @goal.update(goal_params)
            redirect_to goal_path(@goal)
        else
            render :edit
        end
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
