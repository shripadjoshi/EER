class CompaniesController < ApplicationController
  before_action :set_company, only: [:edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    puts "*"*10
    puts params
    puts "*"*10
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        @companies = Company.all
        format.html { redirect_to companies_url, notice: 'Company was successfully created.' }
        format.json { render :index, status: :created, location: @companies }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        @companies = Company.all
        format.html { redirect_to companies_url, notice: 'Company was successfully updated.' }
        format.json { render :index, status: :ok, location: @companies }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :logo, :website, :address, :country, :state, :city, :pincode, :phone_no, :mobile_no, :company_type, :industry_type)
    end
end
