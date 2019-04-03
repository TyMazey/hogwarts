require 'rails_helper'

RSpec.describe 'HogwartsService' do

  it 'exsist' do
    service = HogwartsService.new(nil)

    expect(service).to be_a(HogwartsService)
  end
end
