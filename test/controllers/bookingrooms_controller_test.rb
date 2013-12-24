require 'test_helper'

class BookingroomsControllerTest < ActionController::TestCase
  setup do
    @bookingroom = bookingrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookingrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookingroom" do
    assert_difference('Bookingroom.count') do
      post :create, bookingroom: { description: @bookingroom.description, end_time: @bookingroom.end_time, meeting: @bookingroom.meeting, participant: @bookingroom.participant, room_id: @bookingroom.room_id, start_time: @bookingroom.start_time, status: @bookingroom.status, user_id: @bookingroom.user_id }
    end

    assert_redirected_to bookingroom_path(assigns(:bookingroom))
  end

  test "should show bookingroom" do
    get :show, id: @bookingroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookingroom
    assert_response :success
  end

  test "should update bookingroom" do
    patch :update, id: @bookingroom, bookingroom: { description: @bookingroom.description, end_time: @bookingroom.end_time, meeting: @bookingroom.meeting, participant: @bookingroom.participant, room_id: @bookingroom.room_id, start_time: @bookingroom.start_time, status: @bookingroom.status, user_id: @bookingroom.user_id }
    assert_redirected_to bookingroom_path(assigns(:bookingroom))
  end

  test "should destroy bookingroom" do
    assert_difference('Bookingroom.count', -1) do
      delete :destroy, id: @bookingroom
    end

    assert_redirected_to bookingrooms_path
  end
end
