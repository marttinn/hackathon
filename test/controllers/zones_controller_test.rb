require 'test_helper'

class ZonesControllerTest < ActionController::TestCase
  setup do
    @zone = zones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zone" do
    assert_difference('Zone.count') do
      post :create, zone: { agebs: @zone.agebs, geo_latitude: @zone.geo_latitude, geo_longitude: @zone.geo_longitude, life_cost: @zone.life_cost, name: @zone.name, student_population: @zone.student_population, total_population: @zone.total_population, working_population: @zone.working_population }
    end

    assert_redirected_to zone_path(assigns(:zone))
  end

  test "should show zone" do
    get :show, id: @zone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zone
    assert_response :success
  end

  test "should update zone" do
    patch :update, id: @zone, zone: { agebs: @zone.agebs, geo_latitude: @zone.geo_latitude, geo_longitude: @zone.geo_longitude, life_cost: @zone.life_cost, name: @zone.name, student_population: @zone.student_population, total_population: @zone.total_population, working_population: @zone.working_population }
    assert_redirected_to zone_path(assigns(:zone))
  end

  test "should destroy zone" do
    assert_difference('Zone.count', -1) do
      delete :destroy, id: @zone
    end

    assert_redirected_to zones_path
  end
end
