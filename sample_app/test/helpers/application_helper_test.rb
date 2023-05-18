require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal （コードを書き込む）, full_title
    assert_equal （コードを書き込む）, full_title("Help")
  end
end
