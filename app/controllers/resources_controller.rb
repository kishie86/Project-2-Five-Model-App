class ResourcesController < ActionController::Base
    def index
       @resources = Resource.all 
    end

    def new
        @resource = Resource.new
    end
end