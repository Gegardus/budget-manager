require 'rails_helper'

RSpec.describe "proceedings/index", type: :view do
  before(:each) do
    assign(:proceedings, [
      Proceeding.create!(
        name: "Name",
        amount: "Amount",
        category: nil
      ),
      Proceeding.create!(
        name: "Name",
        amount: "Amount",
        category: nil
      )
    ])
  end

  it "renders a list of proceedings" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Amount".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
