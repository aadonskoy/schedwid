require 'rails_helper'

RSpec.describe ClinicianServices::DeserializeCollection do
  let(:execute) { described_class.call(response: response) }
  let(:mock_service_data) { instance_double(Hash) }
  let(:response) { { 'data' => [mock_service_data] } }

  it 'is correct' do
    service_mock = instance_double(ClinicianService)
    expect(ClinicianService).to receive(:new).with(mock_service_data).and_return(service_mock)
    interactor_result = ClinicianServices::DeserializeCollection.call(response: response)

    expect(interactor_result.success?).to be_truthy
    expect(interactor_result.clinician_services.length).to be(1)
    expect(interactor_result.clinician_services).to include(service_mock)
  end
end
