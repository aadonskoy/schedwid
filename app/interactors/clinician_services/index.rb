class ClinicianServices::Index
  include Interactor

  def call
    context.response = ClinicianServiceRepository.all
    context.fail!(errors: "Incorrect response. Status: #{context.response.code}") unless context.response.success?
  rescue StandardError => err
    context.fail!(errors: "Can't retrieve list of services: #{err.inspect}")
  end
end
