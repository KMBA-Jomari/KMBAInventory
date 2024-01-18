require "test_helper"

class UomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uom = uoms(:one)
  end

  test "should get index" do
    get uoms_url
    assert_response :success
  end

  test "should get new" do
    get new_uom_url
    assert_response :success
  end

  test "should create uom" do
    assert_difference("Uom.count") do
      post uoms_url, params: { uom: { description: @uom.description, name: @uom.name } }
    end

    assert_redirected_to uom_url(Uom.last)
  end

  test "should show uom" do
    get uom_url(@uom)
    assert_response :success
  end

  test "should get edit" do
    get edit_uom_url(@uom)
    assert_response :success
  end

  test "should update uom" do
    patch uom_url(@uom), params: { uom: { description: @uom.description, name: @uom.name } }
    assert_redirected_to uom_url(@uom)
  end

  test "should destroy uom" do
    assert_difference("Uom.count", -1) do
      delete uom_url(@uom)
    end

    assert_redirected_to uoms_url
  end
end
