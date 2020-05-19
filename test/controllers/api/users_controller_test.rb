require 'test_helper'

class Api::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get user_task_list.json" do
    # jsonフォーマット指定でGETリクエストを投げます。
    get api_users_user_task_list_url(:json)

    # 200OKが返ってくるはず。
    assert_response :success

    # Boby部をJSONデータに変換
    json_data = ActiveSupport::JSON.decode(@response.body);

    # usersの配列の長さは3のはず(fixtureで3人作っていれば)
    assert_equal(3, json_data['users'].length);

  end
end
