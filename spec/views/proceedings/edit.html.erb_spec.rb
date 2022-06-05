require 'rails_helper'

RSpec.describe 'proceedings/edit', type: :view do
  before(:each) do
    @proceeding = assign(:proceeding, Proceeding.create!(
                                        name: 'MyString',
                                        amount: 'MyString',
                                        category: nil
                                      ))
  end

  it 'renders the edit proceeding form' do
    render

    assert_select 'form[action=?][method=?]', proceeding_path(@proceeding), 'post' do
      assert_select 'input[name=?]', 'proceeding[name]'

      assert_select 'input[name=?]', 'proceeding[amount]'

      assert_select 'input[name=?]', 'proceeding[category_id]'
    end
  end
end
