class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :edit, :update, :destroy]

	def new
		@project = Project.new(user_id: current_user.id)
	end

	def show
		@charity = Charity.find(@project.user_id)
	end

	def index
		@projects = Project.all
	end

	def edit
		@charity = Charity.find(@project.user_id)
	end

	def create
	    @project = Project.new(project_params)
	    respond_to do |format|
	      if @project.save
	        format.html { redirect_to project_path(@project), notice: 'project was successfully created.' }
	        format.json { render :show, status: :created, location: @project }
	      else
	        format.html { render :new }
	        format.json { render json: @project.errors, status: :unprocessable_entity }
	      end
    	end
    end

    def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to project_path(@project), notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end


    private

    def set_project
    	@project = Project.find(params[:id])
    end

    def project_params
    	project_params = params.require(:project)
    	project_params[:user_id] = current_user.id
    	project_params[:current_amount] = 0
    	project_params.permit(:name, :description, :goal_amount, :project_type, :user_id, :current_amount)
    end

end
