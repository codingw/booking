class BookingcarsController < ApplicationController
  before_action :set_bookingcar, only: [:show, :edit, :update, :destroy]

  # GET /bookingcars
  # GET /bookingcars.json
  def index
    @bookingcars = Bookingcar.all
  end

  # GET /bookingcars/1
  # GET /bookingcars/1.json
  def show
  end

  # GET /bookingcars/new
  def new
    @bookingcar = Bookingcar.new
  end

  # GET /bookingcars/1/edit
  def edit
  end

  # POST /bookingcars
  # POST /bookingcars.json
  def create
    @bookingcar = Bookingcar.new(bookingcar_params)

    respond_to do |format|
      if @bookingcar.save
        format.html { redirect_to @bookingcar, notice: 'Bookingcar was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bookingcar }
      else
        format.html { render action: 'new' }
        format.json { render json: @bookingcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookingcars/1
  # PATCH/PUT /bookingcars/1.json
  def update
    respond_to do |format|
      if @bookingcar.update(bookingcar_params)
        format.html { redirect_to @bookingcar, notice: 'Bookingcar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bookingcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookingcars/1
  # DELETE /bookingcars/1.json
  def destroy
    @bookingcar.destroy
    respond_to do |format|
      format.html { redirect_to bookingcars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookingcar
      @bookingcar = Bookingcar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookingcar_params
      params.require(:bookingcar).permit(:car_id, :user_id, :destination, :description, :start_time, :end_time, :participant, :status)
    end
end
