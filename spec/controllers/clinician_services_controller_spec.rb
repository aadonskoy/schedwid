require 'rails_helper'

RSpec.describe ClinicianServicesController, type: :controller do
  describe 'GET #index' do
    it 'is success' do
      interactor_result = double(ClinicianServices::DeserializeCollection, clinician_services: [])
      expect(ClinicianServices::IndexOrganizer).to receive(:call).and_return(interactor_result)

      get :index
    end
  end

  describe 'GET #show' do
    let(:service_id) { '10' }

    it 'is success' do
      interactor_result = double(ClinicianServices::DeserializeOffice, offices: [])
      expect(ClinicianServices::ShowOrganizer).to receive(:call)
        .with(service_id: service_id).and_return(interactor_result)

      get :show, id: 10
    end
  end
end
