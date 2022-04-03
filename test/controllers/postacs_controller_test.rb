require "test_helper"

class PostacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postac = postacs(:one)
  end

  test "should get index" do
    get postacs_url, as: :json
    assert_response :success
  end

  test "should create postac" do
    assert_difference('Postac.count') do
      post postacs_url, params: { postac: { imie: @postac.imie, klan: @postac.klan, p_fab: @postac.p_fab, profesja: @postac.profesja, przedmioty: @postac.przedmioty, statystyki: @postac.statystyki, umiejetnosci: @postac.umiejetnosci } }, as: :json
    end

    assert_response 201
  end

  test "should show postac" do
    get postac_url(@postac), as: :json
    assert_response :success
  end

  test "should update postac" do
    patch postac_url(@postac), params: { postac: { imie: @postac.imie, klan: @postac.klan, p_fab: @postac.p_fab, profesja: @postac.profesja, przedmioty: @postac.przedmioty, statystyki: @postac.statystyki, umiejetnosci: @postac.umiejetnosci } }, as: :json
    assert_response 200
  end

  test "should destroy postac" do
    assert_difference('Postac.count', -1) do
      delete postac_url(@postac), as: :json
    end

    assert_response 204
  end
end
