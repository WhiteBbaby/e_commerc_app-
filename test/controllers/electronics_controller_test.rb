require "test_helper"

class ElectronicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @electronic = electronics(:one)
  end

  test "should get index" do
    get electronics_url
    assert_response :success
  end

  test "should get new" do
    get new_electronic_url
    assert_response :success
  end

  test "should create electronic" do
    assert_difference("Electronic.count") do
      post electronics_url, params: { electronic: { description: @electronic.description, fulldescription: @electronic.fulldescription, image: @electronic.image, name: @electronic.name, price: @electronic.price } }
    end

    assert_redirected_to electronic_url(Electronic.last)
  end

  test "should show electronic" do
    get electronic_url(@electronic)
    assert_response :success
  end

  test "should get edit" do
    get edit_electronic_url(@electronic)
    assert_response :success
  end

  test "should update electronic" do
    patch electronic_url(@electronic), params: { electronic: { description: @electronic.description, fulldescription: @electronic.fulldescription, image: @electronic.image, name: @electronic.name, price: @electronic.price } }
    assert_redirected_to electronic_url(@electronic)
  end

  test "should destroy electronic" do
    assert_difference("Electronic.count", -1) do
      delete electronic_url(@electronic)
    end

    assert_redirected_to electronics_url
  end
end
