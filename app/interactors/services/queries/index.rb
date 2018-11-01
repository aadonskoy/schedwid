class Services::Queries::Index
  include Interactor

  def call
    context.response = ServiceQuery.new.list
    context.fail!(errors: "Incorrect response. Status: #{context.response.code}") unless context.response.success?
  rescue StandardError => err
    context.fail!(errors: "Can't retrieve list of services: #{err.inspect}")
  end
end
