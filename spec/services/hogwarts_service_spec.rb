require 'rails_helper'

RSpec.describe 'HogwartsService' do

  it 'exsist' do
    service = HogwartsService.new(nil)

    expect(service).to be_a(HogwartsService)
  end

  describe '.get_students_in_house' do
    it 'returns all students for a house' do
      service = HogwartsService.new(4)

      outcome = service.get_students_in_house

      expect(outcome).to be_a(Array)
      expect(outcome.first).to have_key(:name)
      expect(outcome.first).to have_key(:id)
    end
  end
end
