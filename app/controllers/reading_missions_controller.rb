class ReadingMissionsController < ApplicationController
  before_action :set_reading_mission, only: %i[ show edit update destroy ]

  # GET /reading_missions or /reading_missions.json
  def index
    @reading_missions = ReadingMission.all
  end

  # GET /reading_missions/1 or /reading_missions/1.json
  def show
  end

  # GET /reading_missions/new
  def new
    @reading_mission = ReadingMission.new
  end

  # GET /reading_missions/1/edit
  def edit
  end

  # POST /reading_missions or /reading_missions.json
  def create
    @reading_mission = ReadingMission.new(reading_mission_params)

    respond_to do |format|
      if @reading_mission.save
        format.html { redirect_to reading_mission_url(@reading_mission), notice: "Reading mission was successfully created." }
        format.json { render :show, status: :created, location: @reading_mission }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reading_mission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reading_missions/1 or /reading_missions/1.json
  def update
    respond_to do |format|
      if @reading_mission.update(reading_mission_params)
        format.html { redirect_to reading_mission_url(@reading_mission), notice: "Reading mission was successfully updated." }
        format.json { render :show, status: :ok, location: @reading_mission }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reading_mission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reading_missions/1 or /reading_missions/1.json
  def destroy
    @reading_mission.destroy

    respond_to do |format|
      format.html { redirect_to reading_missions_url, notice: "Reading mission was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading_mission
      @reading_mission = ReadingMission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reading_mission_params
      params.require(:reading_mission).permit(:name, :status, :exact_page, :date, :from_page, :to_page, :book_id, :priority, :active)
    end
end
