require 'test_helper'

class VoteStatusesControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

end
