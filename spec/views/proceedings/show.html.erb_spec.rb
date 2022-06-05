require 'rails_helper'

RSpec.describe "proceedings/show", type: :view do
  before(:each) do
    @proceeding = assign(:proceeding, Proceeding.create!(
      name: "Name",
      amount: "Amount",
      category: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Amount/)
    expect(rendered).to match(//)
  end
end
