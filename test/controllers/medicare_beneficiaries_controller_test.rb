require 'test_helper'

class MedicareBeneficiariesControllerTest < ActionController::TestCase
  setup do
    @medicare_beneficiary = medicare_beneficiaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicare_beneficiaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicare_beneficiary" do
    assert_difference('MedicareBeneficiary.count') do
      post :create, medicare_beneficiary: { beneficiaries_at: @medicare_beneficiary.beneficiaries_at, eligibles: @medicare_beneficiary.eligibles, ffs_beneficiaries: @medicare_beneficiary.ffs_beneficiaries, geo_id: @medicare_beneficiary.geo_id, ma_enrollment: @medicare_beneficiary.ma_enrollment, ma_penetration: @medicare_beneficiary.ma_penetration }
    end

    assert_redirected_to medicare_beneficiary_path(assigns(:medicare_beneficiary))
  end

  test "should show medicare_beneficiary" do
    get :show, id: @medicare_beneficiary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicare_beneficiary
    assert_response :success
  end

  test "should update medicare_beneficiary" do
    patch :update, id: @medicare_beneficiary, medicare_beneficiary: { beneficiaries_at: @medicare_beneficiary.beneficiaries_at, eligibles: @medicare_beneficiary.eligibles, ffs_beneficiaries: @medicare_beneficiary.ffs_beneficiaries, geo_id: @medicare_beneficiary.geo_id, ma_enrollment: @medicare_beneficiary.ma_enrollment, ma_penetration: @medicare_beneficiary.ma_penetration }
    assert_redirected_to medicare_beneficiary_path(assigns(:medicare_beneficiary))
  end

  test "should destroy medicare_beneficiary" do
    assert_difference('MedicareBeneficiary.count', -1) do
      delete :destroy, id: @medicare_beneficiary
    end

    assert_redirected_to medicare_beneficiaries_path
  end
end
