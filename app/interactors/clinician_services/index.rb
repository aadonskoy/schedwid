class ClinicianServices::Index
  include Interactor

  def call
    context.response = ClinicianServiceRepository.all
    context.fail!(errors: "Incorrect response. Status: #{context.response.code}") unless context.response.success?
  end
end
