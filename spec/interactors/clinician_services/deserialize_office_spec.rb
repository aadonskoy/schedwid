require 'rails_helper'

RSpec.describe ClinicianServices::DeserializeOffice do
  let(:execute) { described_class.call(response: response) }
  let(:mock_office_data) { instance_double(Hash) }
  let(:response) { {'data' => [mock_office_data] } }

  it 'is correct' do
    office_mock = instance_double(Office)
    expect(Office).to receive(:new).with(mock_office_data).and_return(office_mock)
    interactor_result = ClinicianServices::DeserializeOffice.call(response: response)

    expect(interactor_result.success?).to be_truthy
    expect(interactor_result.offices.length).to be(1)
    expect(interactor_result.offices).to include(office_mock)
  end
end
