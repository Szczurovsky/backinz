require "test_helper"

class NorgmarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @norgmar = norgmars(:one)
  end

  test "should get index" do
    get norgmars_url, as: :json
    assert_response :success
  end

  test "should create norgmar" do
    assert_difference('Norgmar.count') do
      post norgmars_url, params: { norgmar: { nazwa: @norgmar.nazwa, nid: @norgmar.nid, opis: @norgmar.opis, pid: @norgmar.pid } }, as: :json
    end

    assert_response 201
  end

  test "should show norgmar" do
    get norgmar_url(@norgmar), as: :json
    assert_response :success
  end

  test "should update norgmar" do
    patch norgmar_url(@norgmar), params: { norgmar: { nazwa: @norgmar.nazwa, nid: @norgmar.nid, opis: @norgmar.opis, pid: @norgmar.pid } }, as: :json
    assert_response 200
  end

  test "should destroy norgmar" do
    assert_difference('Norgmar.count', -1) do
      delete norgmar_url(@norgmar), as: :json
    end

    assert_response 204
  end
end
