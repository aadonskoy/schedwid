require 'rails_helper'

RSpec.describe Office, type: :model do
  describe 'correct deserializing' do
    let(:id) { 10_000 }
    let(:name) { 'some_name' }
    let(:city) { 'some_city' }
    let(:mock_data) do
      {
        'id' => id,
        'attributes' => {
          'name' => name,
          'city' => city
        }
      }
    end

    subject { described_class.new(mock_data) }

    it { expect(subject.id).to eq(id) }
    it { expect(subject.name).to eq(name) }
    it { expect(subject.city).to eq(city) }
  end
end
