class ReadingTimesController < ApplicationController
  before_action :set_reading_time, only: %i[ show edit update destroy ]

  # GET /reading_times or /reading_times.json
  def index
    @reading_times = ReadingTime.all
  end

  # GET /reading_times/1 or /reading_times/1.json
  def show
  end

  # GET /reading_times/new
  def new
    @reading_time = ReadingTime.new
  end

  # GET /reading_times/1/edit
  def edit
  end

  # POST /reading_times or /reading_times.json
  def create
    @reading_time = ReadingTime.new(reading_time_params)

    respond_to do |format|
      if @reading_time.save
        format.html { redirect_to reading_time_url(@reading_time), notice: "Reading time was successfully created." }
        format.json { render :show, status: :created, location: @reading_time }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reading_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reading_times/1 or /reading_times/1.json
  def update
    respond_to do |format|
      if @reading_time.update(reading_time_params)
        format.html { redirect_to reading_time_url(@reading_time), notice: "Reading time was successfully updated." }
        format.json { render :show, status: :ok, location: @reading_time }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reading_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reading_times/1 or /reading_times/1.json
  def destroy
    @reading_time.destroy

    respond_to do |format|
      format.html { redirect_to reading_times_url, notice: "Reading time was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading_time
      @reading_time = ReadingTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reading_time_params
      params.require(:reading_time).permit(:start_time, :end_time, :from_page, :to_page, :book_id, :note)
    end
end
