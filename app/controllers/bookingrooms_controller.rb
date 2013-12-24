class BookingroomsController < ApplicationController
  before_action :set_bookingroom, only: [:show, :edit, :update, :destroy]

  # GET /bookingrooms
  # GET /bookingrooms.json
  def index
    @bookingrooms = Bookingroom.all
  end

  # GET /bookingrooms/1
  # GET /bookingrooms/1.json
  def show
  end

  # GET /bookingrooms/new
  def new
    @bookingroom = Bookingroom.new
  end

  # GET /bookingrooms/1/edit
  def edit
  end

  # POST /bookingrooms
  # POST /bookingrooms.json
  def create
    @bookingroom = Bookingroom.new(bookingroom_params)

    respond_to do |format|
      if @bookingroom.save
        format.html { redirect_to @bookingroom, notice: 'Bookingroom was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bookingroom }
      else
        format.html { render action: 'new' }
        format.json { render json: @bookingroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookingrooms/1
  # PATCH/PUT /bookingrooms/1.json
  def update
    respond_to do |format|
      if @bookingroom.update(bookingroom_params)
        format.html { redirect_to @bookingroom, notice: 'Bookingroom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bookingroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookingrooms/1
  # DELETE /bookingrooms/1.json
  def destroy
    @bookingroom.destroy
    respond_to do |format|
      format.html { redirect_to bookingrooms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookingroom
      @bookingroom = Bookingroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookingroom_params
      params.require(:bookingroom).permit(:room_id, :user_id, :meeting, :description, :start_time, :end_time, :participant, :status)
    end
end
