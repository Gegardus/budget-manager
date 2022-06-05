require 'rails_helper'

RSpec.describe "proceedings/new", type: :view do
  before(:each) do
    assign(:proceeding, Proceeding.new(
      name: "MyString",
      amount: "MyString",
      category: nil
    ))
  end

  it "renders new proceeding form" do
    render

    assert_select "form[action=?][method=?]", proceedings_path, "post" do

      assert_select "input[name=?]", "proceeding[name]"

      assert_select "input[name=?]", "proceeding[amount]"

      assert_select "input[name=?]", "proceeding[category_id]"
    end
  end
end
