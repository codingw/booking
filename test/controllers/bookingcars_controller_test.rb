require 'test_helper'

class BookingcarsControllerTest < ActionController::TestCase
  setup do
    @bookingcar = bookingcars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookingcars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookingcar" do
    assert_difference('Bookingcar.count') do
      post :create, bookingcar: { car_id: @bookingcar.car_id, description: @bookingcar.description, destination: @bookingcar.destination, end_time: @bookingcar.end_time, participant: @bookingcar.participant, start_time: @bookingcar.start_time, status: @bookingcar.status, user_id: @bookingcar.user_id }
    end

    assert_redirected_to bookingcar_path(assigns(:bookingcar))
  end

  test "should show bookingcar" do
    get :show, id: @bookingcar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookingcar
    assert_response :success
  end

  test "should update bookingcar" do
    patch :update, id: @bookingcar, bookingcar: { car_id: @bookingcar.car_id, description: @bookingcar.description, destination: @bookingcar.destination, end_time: @bookingcar.end_time, participant: @bookingcar.participant, start_time: @bookingcar.start_time, status: @bookingcar.status, user_id: @bookingcar.user_id }
    assert_redirected_to bookingcar_path(assigns(:bookingcar))
  end

  test "should destroy bookingcar" do
    assert_difference('Bookingcar.count', -1) do
      delete :destroy, id: @bookingcar
    end

    assert_redirected_to bookingcars_path
  end
end
