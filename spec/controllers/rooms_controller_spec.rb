require 'spec_helper'

describe RoomsController do
  describe 'GET /index' do
    let!(:room) { create :room, :firefox }
    before(:each) { get :index }
    
    it "assigns @rooms" do expect(assigns(:rooms)).to be_present end
    it { should respond_with(200) }
    it { should render_template(:index) }
  end

  describe 'GET /show' do
    let!(:room) { create :room, :firefox }
    before(:each) { get :show, id: room.id }
    it { should render_template(:show) }

    it "assigns @room" do
      assigns(:room).should be_present
      assigns(:room).should eq(room)
    end
  end

  describe 'GET /new' do
    let!(:room) { create :room, :chrome }
    before(:each) { get :new }
    it { should render_template(:new) }
    it "assigns @rooms" do
      assigns(:room).should be_a_new_record
    end
  end

  describe 'POST /create' do
    let(:room_params) { { name: 'opera', capacity: 8 } }

    context 'with valid params' do
      before(:each) { post :create, room: room_params }
      it { should redirect_to room_path(assigns(:room)) }
    end

    context 'with invalid params' do
      before(:each) { post :create, room: room_params.except(:name) }
      it { should render_template(:new) }
    end
  end

  describe 'GET /edit' do
    let!(:room) { create :room, :chrome }
    before(:each) { get :edit, id: room.id }
    it { should render_template(:edit) }
  end

  describe 'PUT /update' do
    let!(:room) { create :room, :firefox }
    let(:room_params) { room.attributes.except('id', 'update_at', 'created_at') }

    context 'edit with valid params' do
      before(:each) { put :update, id: room.id, room: room_params }
      it { should redirect_to room_path(assigns(:room)) }
    end

    context 'edit with invalid params' do
      before(:each) { put :update, id: room.id, room: room_params.merge("name" => "") }
      it { should render_template(:edit) }
    end
  end

  describe 'DELETE /destroy' do
    let!(:room) { create :room, :firefox }
    before(:each) { delete :destroy, id: room.id }
    it { should redirect_to rooms_path }
  end
end
