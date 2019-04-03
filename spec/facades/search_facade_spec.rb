require 'rails_helper'

RSpec.describe "SearchFacade" do

  it 'exist' do
    facade = SearchFacade.new({})

    expect(facade).to be_a(SearchFacade)
  end

  describe 'instance methods' do

  end
end
