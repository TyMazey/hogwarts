require 'rails_helper'

RSpec.describe "SearchFacade" do

  it 'exist' do
    facade = SearchFacade.new({})

    expect(facade).to be_a(SearchFacade)
  end

  describe 'instance methods' do
    describe '.total_students' do
      it 'returns the count of all students in the search' do
        facade = SearchFacade.new({house: '4'})

        expect(facade.total_students).to eq(22)
      end
    end

    describe '.students' do
      it 'returns student objects from the search' do
        facade = SearchFacade.new({house: '4'})

        expect(facade.students.count).to eq(22)
        expect(facade.students.first).to be_a(Student)
      end
    end
  end
end
