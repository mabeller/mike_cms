class MedicareBeneficiariesController < ApplicationController
  before_action :set_medicare_beneficiary, only: [:show, :edit, :update, :destroy]

  # GET /medicare_beneficiaries
  # GET /medicare_beneficiaries.json
  def index
    @medicare_beneficiaries = MedicareBeneficiary.all
  end

  # GET /medicare_beneficiaries/1
  # GET /medicare_beneficiaries/1.json
  def show
  end

  # GET /medicare_beneficiaries/new
  def new
    @medicare_beneficiary = MedicareBeneficiary.new
  end

  # GET /medicare_beneficiaries/1/edit
  def edit
  end

  # POST /medicare_beneficiaries
  # POST /medicare_beneficiaries.json
  def create
    @medicare_beneficiary = MedicareBeneficiary.new(medicare_beneficiary_params)

    respond_to do |format|
      if @medicare_beneficiary.save
        format.html { redirect_to @medicare_beneficiary, notice: 'Medicare beneficiary was successfully created.' }
        format.json { render :show, status: :created, location: @medicare_beneficiary }
      else
        format.html { render :new }
        format.json { render json: @medicare_beneficiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicare_beneficiaries/1
  # PATCH/PUT /medicare_beneficiaries/1.json
  def update
    respond_to do |format|
      if @medicare_beneficiary.update(medicare_beneficiary_params)
        format.html { redirect_to @medicare_beneficiary, notice: 'Medicare beneficiary was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicare_beneficiary }
      else
        format.html { render :edit }
        format.json { render json: @medicare_beneficiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicare_beneficiaries/1
  # DELETE /medicare_beneficiaries/1.json
  def destroy
    @medicare_beneficiary.destroy
    respond_to do |format|
      format.html { redirect_to medicare_beneficiaries_url, notice: 'Medicare beneficiary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicare_beneficiary
      @medicare_beneficiary = MedicareBeneficiary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicare_beneficiary_params
      params.require(:medicare_beneficiary).permit(:geo_id, :ma_enrollment, :ffs_beneficiaries, :eligibles, :ma_penetration, :beneficiaries_at)
    end
end
