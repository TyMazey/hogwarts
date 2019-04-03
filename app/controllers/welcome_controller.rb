class WelcomeController < ApplicationController
  def index
    render locals: {
      hogwarts_things: ['Hufflepuff', 'Slytherin', 'Gryffindore', 'Ravenclaw']
    }
  end
end
