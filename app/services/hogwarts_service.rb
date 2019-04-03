class HogwartsService

  def initialize(search_params)
    @search_params = search_params
  end

  def get_students_in_house
    get_json(get_response)
  end

  private

  def conn
    Faraday.new(url: "http://hogwarts-as-a-service.herokuapp.com/api/v1/house/") do |f|
      f.adapter Faraday.default_adapter
    end
  end

  def get_response
    conn.get "#{@search_params}" do |request|
      request.headers['x_api_key'] = "oPGaRUMm7Cpisj6fosH8VhIgjnxx8zh1"
      # request.params[:api_key] = "oPGaRUMm7Cpisj6fosH8Vhlgjnxx8zh1"
    end
  end

  def get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
