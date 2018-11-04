class ClinicianServices::DeserializeCollection
  include Interactor

  def call
    clinician_services = context.response['data']
    context.clinician_services = clinician_services.map(&method(:to_clinician_service))
  end

  private

  def to_clinician_service(data)
    ClinicianService.new(data)
  end
end
