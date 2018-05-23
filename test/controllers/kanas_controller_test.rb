require 'test_helper'

class KanasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kana = kanas(:one)
  end

  test "should get index" do
    get kanas_url, as: :json
    assert_response :success
  end

  test "should create kana" do
    assert_difference('Kana.count') do
      post kanas_url, params: { kana: { hiragana: @kana.hiragana, katakana: @kana.katakana, letter: @kana.letter } }, as: :json
    end

    assert_response 201
  end

  test "should show kana" do
    get kana_url(@kana), as: :json
    assert_response :success
  end

  test "should update kana" do
    patch kana_url(@kana), params: { kana: { hiragana: @kana.hiragana, katakana: @kana.katakana, letter: @kana.letter } }, as: :json
    assert_response 200
  end

  test "should destroy kana" do
    assert_difference('Kana.count', -1) do
      delete kana_url(@kana), as: :json
    end

    assert_response 204
  end
end
