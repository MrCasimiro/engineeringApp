require 'rails_helper'

RSpec.describe WorkoutCreationsController, type: :controller do

	describe "GET #show" do
	    it "returns http success" do 
	    	person = Person.create!(name: "coach", email: "coach3@coach.com",
 					phone: "1111111", age: 21, gender: "other", password: "123456", password_confirmation: "123456")
	    	get :show, params: {id: Coach.create(person_id: person.id)}
	    	expect(response).to have_http_status(:success)
	    end
  end

end
