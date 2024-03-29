class DonationsController < ApplicationController
  before_action :set_resource
  before_action :set_donation, only: [:show, :edit, :update, :destroy]
  helper_method :get_recipient_name

  # GET /donations
  # GET /donations.json
  def index
    if params[:search]
      @donations = @charity.donations.search(params[:search]).order("created_at DESC")
    else
      @donations = @charity.donations.all.order('created_at DESC')
    end
  end

  # GET /donations/1
  # GET /donations/1.json
  def show
  end

  # GET /donations/new
  def new
    if @charity
      @donation = @charity.donations.new(user: current_user)
      @name = @charity.name
    elsif @project
      @donation = @project.donations.new(user: current_user)
      @name = @project.name
    end
  end

  # GET /donations/1/edit
  def edit
  end

  # POST /donations
  # POST /donations.json
  def create
    @donation = @charity.donations.new(donation_params)
    respond_to do |format|
      if @donation.save
        format.html { redirect_to charity_donation_path(@charity, @donation), notice: 'Donation was successfully created.' }
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
        format.html { redirect_to charity_donation_path(@charity, @donation), notice: 'Donation was successfully updated.' }
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

  def get_recipient_name
    if @donation.recipient_type == "Charity"
      Charity.find(@donation.recipient_id).name
    elsif @donation.recipient_type == "Project"
      Project.find(@donation.recipient_id).name
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = @charity.donations.find(params[:id])
    end

    def set_charity
      @charity = Charity.find(params[:charity_id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_resource

      set_charity if params[:charity_id]
      set_project if params[:project_id]

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      donation_params = params.require(:donation)
      donation_params[:user_id] = current_user.id
      donation_params[:recipient_type] = "Project"
      donation_params.permit(:user_id, :description, :value, :recipient_id, :recipient_type)
    end
end
