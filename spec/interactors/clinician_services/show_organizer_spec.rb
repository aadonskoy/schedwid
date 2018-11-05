require 'rails_helper'

RSpec.describe ClinicianServices::ShowOrganizer do
  let(:organized) { described_class.organized }

  it { expect(organized.length).to be(2) }
  it { expect(organized).to include(ClinicianServices::Show) }
  it { expect(organized).to include(ClinicianServices::DeserializeOffice) }
end
