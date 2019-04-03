require 'rails_helper'

RSpec.describe "Student" do
  it 'exist' do
    student = Student.new({})

    expect(student).to be_a(Student)
  end

  it 'has attributes' do
    student = Student.new({name: 'name', id: 'id'})

    expect(student.name).to eq('name')
    expect(student.id).to eq('id')
  end
end
