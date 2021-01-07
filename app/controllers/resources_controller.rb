class ResourcesController < ActionController::Base
    def index
       @resources = Resource.all 
    end

    def show
        @resource = Resource.find_by(params[:id])
    end

    def new
        @resource = Resource.new
    end

    def create 
        @resource = Resource.create(resource_params)
        redirect_to resources_path
    end

    def edit
        @resource = Resource.find_by(params[:id])
    end 

    def update
        @resource = Resource.find_by(id: params[:id])
         @resource.update(resource_params)
         redirect_to resource_path
    end

    def destroy
        @resource = Resource.find_by(id: params[:id])
         @resource.destroy
         redirect_to resources_path
    end

    def resource_params
       params.require(:resource).permit(:website_domain, :notes, :goal_id, :user_id)
    end

    
end