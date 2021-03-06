class ClinicianServices::Show
  include Interactor

  delegate :service_id, to: :context

  def call
    context.response = ClinicianServiceRepository.find_by_id(service_id)
    context.fail!(errors: "Incorrect response. Status: #{context.response.code}") unless context.response.success?
  end
end
