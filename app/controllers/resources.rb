class ResourcesController < ActionController::Base
    def index
        @resources = Resources.all
    end
end