class IncidentsController < ApplicationController
  before_action :set_incident, only: %w(show)

  # GET /incidents
  # GET /incidents.json
  def index
    @incidents = Incident.all
  end

  # GET /incidents/{:ID}
  # GET /incidents/{:ID}.json
  def show
  end

  # GET /incidents/new
  def new
    @incident = Incident.new
    @incident_attachment = @incident.incident_pictures.build
  end

  # POST /incidents
  # POST /incidents.json
  def create
    @incident = Incident.new( incident_params )

    respond_to do |format|
      if @incident.save
        if params[ :incident_pictures ].present?
          params[ :incident_pictures ][ 'picture' ].each do | pic |
            @incident_picture = @incident.incident_pictures.create!( picture: pic )
          end
        end
        if params[:commit] == "Submit & Next"
          format.html { redirect_to new_incident_incident_detail_path(@incident), notice: 'Thank you! Incident was successfully created. Please submit incident details here' }
          format.json { render :show, status: :created, location: @incident }
        else
          format.html { redirect_to @incident, notice: 'Thank you! Incident was successfully created. Please submit incident details to make it Live' }
          format.json { render :show, status: :created, location: @incident }
        end
      else
        format.html { render :new }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_incident
    @incident = Incident.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def incident_params
    params.require(:incident).permit(:school_id, :description, incident_pictures_attributes: [:id, :incident_id, :picture])
  end
end
