require 'test_helper'

class MaEnrollmentsControllerTest < ActionController::TestCase
  setup do
    @ma_enrollment = ma_enrollments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ma_enrollments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ma_enrollment" do
    assert_difference('MaEnrollment.count') do
      post :create, ma_enrollment: { enrollment: @ma_enrollment.enrollment, enrollment_at: @ma_enrollment.enrollment_at, geoID: @ma_enrollment.geoID, hnumber: @ma_enrollment.hnumber }
    end

    assert_redirected_to ma_enrollment_path(assigns(:ma_enrollment))
  end

  test "should show ma_enrollment" do
    get :show, id: @ma_enrollment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ma_enrollment
    assert_response :success
  end

  test "should update ma_enrollment" do
    patch :update, id: @ma_enrollment, ma_enrollment: { enrollment: @ma_enrollment.enrollment, enrollment_at: @ma_enrollment.enrollment_at, geoID: @ma_enrollment.geoID, hnumber: @ma_enrollment.hnumber }
    assert_redirected_to ma_enrollment_path(assigns(:ma_enrollment))
  end

  test "should destroy ma_enrollment" do
    assert_difference('MaEnrollment.count', -1) do
      delete :destroy, id: @ma_enrollment
    end

    assert_redirected_to ma_enrollments_path
  end
end
