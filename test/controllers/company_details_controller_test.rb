require 'test_helper'

class CompanyDetailsControllerTest < ActionController::TestCase
  setup do
    @company_detail = company_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_detail" do
    assert_difference('CompanyDetail.count') do
      post :create, company_detail: { billing_address: @company_detail.billing_address, company_address: @company_detail.company_address, company_info: @company_detail.company_info, company_name: @company_detail.company_name, company_type: @company_detail.company_type, pan: @company_detail.pan, registration_number: @company_detail.registration_number, shipping_address: @company_detail.shipping_address, vat: @company_detail.vat }
    end

    assert_redirected_to company_detail_path(assigns(:company_detail))
  end

  test "should show company_detail" do
    get :show, id: @company_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_detail
    assert_response :success
  end

  test "should update company_detail" do
    patch :update, id: @company_detail, company_detail: { billing_address: @company_detail.billing_address, company_address: @company_detail.company_address, company_info: @company_detail.company_info, company_name: @company_detail.company_name, company_type: @company_detail.company_type, pan: @company_detail.pan, registration_number: @company_detail.registration_number, shipping_address: @company_detail.shipping_address, vat: @company_detail.vat }
    assert_redirected_to company_detail_path(assigns(:company_detail))
  end

  test "should destroy company_detail" do
    assert_difference('CompanyDetail.count', -1) do
      delete :destroy, id: @company_detail
    end

    assert_redirected_to company_details_path
  end
end
