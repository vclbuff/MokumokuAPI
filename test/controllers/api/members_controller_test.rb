require "test_helper"

class Api::MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_member = api_members(:one)
  end

  test "should get index" do
    get api_members_url, as: :json
    assert_response :success
  end

  test "should create api_member" do
    assert_difference('Api::Member.count') do
      post api_members_url, params: { api_member: { greeting: @api_member.greeting, name: @api_member.name } }, as: :json
    end

    assert_response 201
  end

  test "should show api_member" do
    get api_member_url(@api_member), as: :json
    assert_response :success
  end

  test "should update api_member" do
    patch api_member_url(@api_member), params: { api_member: { greeting: @api_member.greeting, name: @api_member.name } }, as: :json
    assert_response 200
  end

  test "should destroy api_member" do
    assert_difference('Api::Member.count', -1) do
      delete api_member_url(@api_member), as: :json
    end

    assert_response 204
  end
end
