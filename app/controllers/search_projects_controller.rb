class SearchProjectsController < ApplicationController
  before_action :set_search_project, only: [:show, :edit, :update, :destroy]

  # GET /search_projects
  # GET /search_projects.json
  def index
    @search_projects = SearchProject.all
  end

  # GET /search_projects/1
  # GET /search_projects/1.json
  def show
    @projects = find_projects
  end



  # GET /search_projects/new
  def new
    @search_project = SearchProject.new
  end

  # GET /search_projects/1/edit
  def edit
  end

  # POST /search_projects
  # POST /search_projects.json
  def create
    @search_project = SearchProject.new(search_project_params)

    respond_to do |format|
      if @search_project.save
        format.html { redirect_to @search_project, notice: 'Search project was successfully created.' }
        format.json { render :show, status: :created, location: @search_project }
      else
        format.html { render :new }
        format.json { render json: @search_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_projects/1
  # PATCH/PUT /search_projects/1.json
  def update
    respond_to do |format|
      if @search_project.update(search_project_params)
        format.html { redirect_to @search_project, notice: 'Search project was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_project }
      else
        format.html { render :edit }
        format.json { render json: @search_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_projects/1
  # DELETE /search_projects/1.json
  def destroy
    @search_project.destroy
    respond_to do |format|
      format.html { redirect_to search_projects_url, notice: 'Search project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_project
      @search_project = SearchProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_project_params
      params.require(:search_project).permit(:keywords, :type, :urgent, :min_amout_asked, :max_amount_asked, :new, :show)
    end

      private

  def find_projects
    Project.all.where(keyword_conditions).where(category_conditions)
    # , category_conditions, urgent_conditions,min_amount_asked_contitions, max_amount_asked_conditions
  end

  def keyword_conditions
    ["projects.name LIKE ?", "%#{@search_project.keywords}%"] unless @search_project.keywords.blank?
  end

  def category_conditions
    ["projects.project_type = ?", @search_project.type] unless @search_project.type==nil
  end

  def urgent_conditions
    ["projects.urgent = ?", @search_project.urgent] unless @search_project.urgent==nil
  end

  def min_amount_asked_contitions
    ["projects.goal_amount >= ?", @search_project.min_amout_asked] unless (@search_project.min_amout_asked.blank? or @search_project.min_amout_asked<=0)
  end

  def max_amount_asked_conditions
    ["projects.goal_amount <= ?", @search_project.max_amount_asked] unless (@search_project.max_amount_asked.blank? or @search_project.max_amount_asked<=0)
  end

  def conditions
    [conditions_clauses.join(' AND '), *conditions_options]
  end

  def conditions_clauses
    conditions_parts.map { |condition| condition.first }
  end

  def conditions_options
    conditions_parts.map { |condition| condition[1..-1] }.flatten
  end

  def conditions_parts
    private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
  end
end
