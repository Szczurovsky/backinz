require "test_helper"

class KlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klan = klans(:one)
  end

  test "should get index" do
    get klans_url, as: :json
    assert_response :success
  end

  test "should create klan" do
    assert_difference('Klan.count') do
      post klans_url, params: { klan: { index: @klan.index, jarl: @klan.jarl, nastepca: @klan.nastepca, nazwa: @klan.nazwa, opis: @klan.opis, polozenie: @klan.polozenie, show: @klan.show, stolica: @klan.stolica } }, as: :json
    end

    assert_response 201
  end

  test "should show klan" do
    get klan_url(@klan), as: :json
    assert_response :success
  end

  test "should update klan" do
    patch klan_url(@klan), params: { klan: { index: @klan.index, jarl: @klan.jarl, nastepca: @klan.nastepca, nazwa: @klan.nazwa, opis: @klan.opis, polozenie: @klan.polozenie, show: @klan.show, stolica: @klan.stolica } }, as: :json
    assert_response 200
  end

  test "should destroy klan" do
    assert_difference('Klan.count', -1) do
      delete klan_url(@klan), as: :json
    end

    assert_response 204
  end
end
