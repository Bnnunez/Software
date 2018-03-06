require 'test_helper'

class AdoptionPetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adoption_pet = adoption_pets(:one)
  end

  test "should get index" do
    get adoption_pets_url
    assert_response :success
  end

  test "should get new" do
    get new_adoption_pet_url
    assert_response :success
  end

  test "should create adoption_pet" do
    assert_difference('AdoptionPet.count') do
      post adoption_pets_url, params: { adoption_pet: { adopted: @adoption_pet.adopted, birthday: @adoption_pet.birthday, description: @adoption_pet.description, name: @adoption_pet.name, weight: @adoption_pet.weight } }
    end

    assert_redirected_to adoption_pet_url(AdoptionPet.last)
  end

  test "should show adoption_pet" do
    get adoption_pet_url(@adoption_pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_adoption_pet_url(@adoption_pet)
    assert_response :success
  end

  test "should update adoption_pet" do
    patch adoption_pet_url(@adoption_pet), params: { adoption_pet: { adopted: @adoption_pet.adopted, birthday: @adoption_pet.birthday, description: @adoption_pet.description, name: @adoption_pet.name, weight: @adoption_pet.weight } }
    assert_redirected_to adoption_pet_url(@adoption_pet)
  end

  test "should destroy adoption_pet" do
    assert_difference('AdoptionPet.count', -1) do
      delete adoption_pet_url(@adoption_pet)
    end

    assert_redirected_to adoption_pets_url
  end
end
