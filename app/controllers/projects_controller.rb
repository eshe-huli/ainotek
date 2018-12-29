class ProjectsController < ApplicationController

	before_action :set_project only: [:show, :update, :destroy, :edit]

    def index
    	@project = Project.all
        @posts = Post.all
        @categories = Category.all
    end

    def show
    end

    def edit
    end 

    def update
    	@project.update(project_params)
    	redirect_to project_path
    end


    def new
    	@project = Project.new
    end

    def create
    	@project = Project.create(project_params)
    	redirect_to project_path(@project.id)
    end

    def destroy
    	@project.destroy
    	redirect_to projects_path
    end

    private

    def project_params
    	params.require(:project).permit(:title, :content)
    end

    def set_project
    	@project = Project.find(params[:id])
    end

end
