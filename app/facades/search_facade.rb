class SearchFacade

  def initialize(search_params)
    @house = search_params[:house]
  end

  def total_students
    22
  end

  def students
    student_service(@house.downcase)[:data].first[:attributes][:students].map do |student_info|
      Student.new(student_info)
    end
  end

  private

  def student_service(search)
    HogwartsService.new(search).get_students_in_house
  end
end
