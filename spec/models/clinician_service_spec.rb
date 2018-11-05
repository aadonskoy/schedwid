require 'rails_helper'

RSpec.describe ClinicianService, type: :model do
  describe 'correct deserializing' do
    let(:id) { 10_000 }
    let(:name) { 'some_name' }
    let(:mock_data) do
      {
        'id' => id,
        'attributes' => {
          'name' => name,
        }
      }
    end

    subject { described_class.new(mock_data) }

    it { expect(subject.id).to eq(id) }
    it { expect(subject.name).to eq(name) }
  end
end
