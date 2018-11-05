require 'rails_helper'

RSpec.describe ClinicianServices::IndexOrganizer do
  let(:organized) { described_class.organized }

  it { expect(organized.length).to be(2) }
  it { expect(organized).to include(ClinicianServices::Index) }
  it { expect(organized).to include(ClinicianServices::DeserializeCollection) }
end
