require 'rails_helper'

RSpec.describe ClinicianServices::Index do
  let(:execute) { described_class.call }

  let(:err_code) { '500' }
  it 'completely correct' do
    response = instance_double(HTTParty::Response, success?: true)
    expect(ClinicianServiceRepository).to receive(:all).and_return(response)

    expect(execute.success?).to be_truthy
    expect(execute.response).to eq(response)
  end

  it 'bad response' do
    response = instance_double(HTTParty::Response, success?: false, code: err_code)
    expect(ClinicianServiceRepository).to receive(:all).and_return(response)

    expect(execute.success?).to be_falsey
    expect(execute.response).to eq(response)
    expect(execute.errors).to eq("Incorrect response. Status: #{err_code}")
  end
end
