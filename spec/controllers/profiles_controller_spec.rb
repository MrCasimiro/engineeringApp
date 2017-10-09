require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do

	before :each do
    	@user = FactoryGirl.create(:user)
  	end

	describe "GET #show" do

		it "returns http success" do
			get :show, params: {id: @user.id}
			expect(response).to have_http_status(:success)
		end
	end

end
