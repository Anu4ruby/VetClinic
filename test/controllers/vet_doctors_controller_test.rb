require 'test_helper'

class VetDoctorsControllerTest < ActionController::TestCase
  setup do
    @vet_doctor = vet_doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vet_doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vet_doctor" do
    assert_difference('VetDoctor.count') do
      post :create, vet_doctor: { address: @vet_doctor.address, city: @vet_doctor.city, name: @vet_doctor.name, school: @vet_doctor.school, state: @vet_doctor.state, yrs_in_practice: @vet_doctor.yrs_in_practice, zip: @vet_doctor.zip }
    end

    assert_redirected_to vet_doctor_path(assigns(:vet_doctor))
  end

  test "should show vet_doctor" do
    get :show, id: @vet_doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vet_doctor
    assert_response :success
  end

  test "should update vet_doctor" do
    patch :update, id: @vet_doctor, vet_doctor: { address: @vet_doctor.address, city: @vet_doctor.city, name: @vet_doctor.name, school: @vet_doctor.school, state: @vet_doctor.state, yrs_in_practice: @vet_doctor.yrs_in_practice, zip: @vet_doctor.zip }
    assert_redirected_to vet_doctor_path(assigns(:vet_doctor))
  end

  test "should destroy vet_doctor" do
    assert_difference('VetDoctor.count', -1) do
      delete :destroy, id: @vet_doctor
    end

    assert_redirected_to vet_doctors_path
  end
end
