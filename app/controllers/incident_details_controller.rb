class IncidentDetailsController < ApplicationController
  before_action :set_incident

  def new
    @incident_detail = @incident.build_incident_detail
  end

  def create
    @incident_detail = @incident.incident_detail.new incident_detail_params

    respond_to do | wants |
      if @incident_detail.save
      end
    end
  end

  def show
    @incident_detail = @incident.incident_detail.find params[:id]
  end

private
  def set_incident
    @incident = Incident.find params[:incident_id]
  end

  def incident_detail_params
    params.require(:incident_detail).permit(:is_anonymous, :name, :email, :role, :observed_at, incident_type_ids: [])
  end
end
