require 'rails_helper'

RSpec.describe 'Testing proceedings', type: :feature do
  before(:each) do
    @user = User.create(name: 'Name', email: 'name@example.com', password: '123456')
    @category = Category.create(name: 'Category',
                                icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI_LyzUw19FDIeWU9lJIvb0A9fd95f6uHfmg&usqp=CAU', user: @user)
    @proceeding = Proceeding.create(name: 'Payment', amount: 200, category: @category)

    visit new_user_session_path
    find('#email').set @user.email
    find('#floating_password').set @user.password
    click_on 'Next'
    visit category_path(@category.id)
    click_link('New Transaction')
  end

  describe 'proceedings#new' do
    it 'adds data to form and sucessufully submits' do
      find('#name').set 'apples'
      find('#amount').set 50
      click_on 'Submit'
      expect(page).to have_content 'apples'
      expect(page).to have_content('50')
    end
  end
end
