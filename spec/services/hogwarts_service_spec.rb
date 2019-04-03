require 'rails_helper'

RSpec.describe 'HogwartsService' do

  it 'exsist' do
    service = HogwartsService.new(nil)

    expect(service).to be_a(HogwartsService)
  end

  describe '.get_students_in_house' do
    it 'returns all students for a house' do
      service = HogwartsService.new('Slytherin')

      outcome = service.get_students_in_house

      expect(outcome).to be_a(Hash)
      expect(outcome).to have_key(:data)
      expect(outcome[:data].first[:attributes]).to have_key(:students)
    end
  end
end
