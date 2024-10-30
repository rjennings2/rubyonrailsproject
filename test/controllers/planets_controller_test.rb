require "test_helper"

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get planets_index_url
    assert_response :success
  end

  test "should get show" do
    get planets_show_url
    assert_response :success
  end
  test "should get rails" do
    get planets_rails_url
    assert_response :success
  end

  test "should get generate" do
    get planets_generate_url
    assert_response :success
  end

  test "should get controller" do
    get planets_controller_url
    assert_response :success
  end

  test "should get Starships" do
    get planets_Starships_url
    assert_response :success
  end

  test "should get index" do
    get planets_index_url
    assert_response :success
  end

  test "should get show" do
    get planets_show_url
    assert_response :success
  end
end
