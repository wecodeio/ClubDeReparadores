require 'test_helper'

class RepairersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repairer = repairers(:one)
  end

  test "should get index" do
    get repairers_url
    assert_response :success
  end

  test "should get new" do
    get new_repairer_url
    assert_response :success
  end

  test "should create repairer" do
    assert_difference('Repairer.count') do
      post repairers_url, params: { repairer: {  } }
    end

    assert_redirected_to repairer_url(Repairer.last)
  end

  test "should show repairer" do
    get repairer_url(@repairer)
    assert_response :success
  end

  test "should get edit" do
    get edit_repairer_url(@repairer)
    assert_response :success
  end

  test "should update repairer" do
    patch repairer_url(@repairer), params: { repairer: {  } }
    assert_redirected_to repairer_url(@repairer)
  end

  test "should destroy repairer" do
    assert_difference('Repairer.count', -1) do
      delete repairer_url(@repairer)
    end

    assert_redirected_to repairers_url
  end
end
