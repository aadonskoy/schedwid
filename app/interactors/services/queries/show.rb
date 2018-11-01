class Services::Queries::Show
  include Interactor

  delegate :service_id, to: :context

  def call
    context.response = ServiceQuery.new.information(service_id)
    context.fail!(errors: "Incorrect response. Status: #{context.response.code}") unless context.response.success?
  rescue StandardError => err
    context.fail!(errors: "Can't retrieve the service: #{err.inspect}")
  end
end
