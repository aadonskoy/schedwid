class ClinicianServices::DeserializeOffice
  include Interactor

  def call
    offices = context.response['data']
    context.offices = offices.map(&method(:to_office))
  end

  private

  def to_office(data)
    Office.new(data)
  end
end
