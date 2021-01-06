
class MicroGoalsController < ActionController::Base
    def index
        @microgoals = MicroGoals.all
    end
end