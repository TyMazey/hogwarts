require 'rails_helper'

RSpec.describe 'as visitor' do
  describe 'when i visit the root path' do
    it 'shows me a dropdown menu of hogwarts things to choose from' do
      visit root_path

      expect(page).to have_css('.hogwarts-things')

      select("Slytherin"), from: :hogwarts
      click_button('Get Students')

      expect(current_path).to eq(search_path)
    end
  end
end







You are the new web developer for Hogwarts. The IT staff has provided an API where you can get a listing of students.

`http://hogwarts-it.herokuapp.com`

You are to create an app and complete this following user story:

```
As a user
When I visit "/"
And I select "Slytherin" from the dropdown
And I click on "Get Students"
Then my path should be "/search" with "house=slytherin" in the parameters
And I should see a message "22 Students"
And I should see a list of the 22 members of Slytherin
And I should see a name and id for each student.
```
3fhZMZNXVndxk51mILsdVnGN6tF8KBI6
