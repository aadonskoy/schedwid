class ClinicianServicesController < ApplicationController
  def index
    result = ClinicianServices::IndexOrganizer.call
    @clinician_services = result.clinician_services
  end

  def show
    result = ClinicianServices::ShowOrganizer.call(service_id: params[:id])
    @offices = result.offices
  end
end
