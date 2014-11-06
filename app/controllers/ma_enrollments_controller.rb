class MaEnrollmentsController < ApplicationController
  before_action :set_ma_enrollment, only: [:show, :edit, :update, :destroy]

  # GET /ma_enrollments
  # GET /ma_enrollments.json
  def index
    @ma_enrollments = MaEnrollment.all
  end

  # GET /ma_enrollments/1
  # GET /ma_enrollments/1.json
  def show
  end

  # GET /ma_enrollments/new
  def new
    @ma_enrollment = MaEnrollment.new
  end

  # GET /ma_enrollments/1/edit
  def edit
  end

  # POST /ma_enrollments
  # POST /ma_enrollments.json
  def create
    @ma_enrollment = MaEnrollment.new(ma_enrollment_params)

    respond_to do |format|
      if @ma_enrollment.save
        format.html { redirect_to @ma_enrollment, notice: 'Ma enrollment was successfully created.' }
        format.json { render :show, status: :created, location: @ma_enrollment }
      else
        format.html { render :new }
        format.json { render json: @ma_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ma_enrollments/1
  # PATCH/PUT /ma_enrollments/1.json
  def update
    respond_to do |format|
      if @ma_enrollment.update(ma_enrollment_params)
        format.html { redirect_to @ma_enrollment, notice: 'Ma enrollment was successfully updated.' }
        format.json { render :show, status: :ok, location: @ma_enrollment }
      else
        format.html { render :edit }
        format.json { render json: @ma_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ma_enrollments/1
  # DELETE /ma_enrollments/1.json
  def destroy
    @ma_enrollment.destroy
    respond_to do |format|
      format.html { redirect_to ma_enrollments_url, notice: 'Ma enrollment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ma_enrollment
      @ma_enrollment = MaEnrollment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ma_enrollment_params
      params[:ma_enrollment]
    end
end
