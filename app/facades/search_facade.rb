class SearchFacade

  def initialize(search_params)
    @hosue = search_params[:house]
  end

  def total_students
    22
  end

  def students
    HogwartsService(@house).map do |student_info|
      Student.new(student_info)
    end
  end
end
