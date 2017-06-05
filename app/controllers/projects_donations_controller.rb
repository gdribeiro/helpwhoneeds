class ProjectsDonationsController < ApplicationController
  before_action :set_project
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

  # GET /donations
  # GET /donations.json
  def index
    if params[:search]
      @donations = @project.donations.search(params[:search]).order("created_at DESC")
    else
      @donations = @project.donations.all.order('created_at DESC')
    end
  end

  # GET /donations/1
  # GET /donations/1.json
  def show
  end

  # GET /donations/new
  def new
      @donation = @project.donations.new(user: current_user)
      @name = @project.name
  end

  # GET /donations/1/edit
  def edit
  end

  # POST /donations
  # POST /donations.json
  def create
    @donation = @project.donations.new(donation_params)
    respond_to do |format|
      if @donation.save
        @project.current_amount += @donation.value
        @project.save
        format.html { redirect_to project_projects_donation_path(@project, @donation), notice: 'Donation was successfully created.' }
        format.json { render :show, status: :created, location: @donation }
      else
        byebug
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to project_donation_path(@project, @donation), notice: 'Donation was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to donations_url, notice: 'Donation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = @project.donations.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      donation_params = params.require(:donation)
      donation_params[:user_id] = current_user.id
      donation_params[:recipient_type] = "Project"
      donation_params.permit(:user_id, :description, :value, :recipient_id,:recipient_type)
    end


end
