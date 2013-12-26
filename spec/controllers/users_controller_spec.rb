require 'spec_helper'

describe UsersController do
  describe 'GET /index' do
    let!(:user) { create :user, :admin }
    before(:each) { get :index }
    
    it "assigns @users" do expect(assigns(:users)).to be_present end
    it { should respond_with(200) }
    it { should render_template(:index) }
  end
end
