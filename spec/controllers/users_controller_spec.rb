require 'spec_helper'

describe UsersController do

  describe 'GET /index' do
    let!(:user) { create :user, :admin }

    before(:each) do
      sign_in user #this is for login
      get :index 
    end
    
    it "assigns @users" do expect(assigns(:users)).to be_present end
    it { should respond_with(200) }
    it { should render_template(:index) }
  end
end
