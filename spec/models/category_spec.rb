require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user = User.create(name: 'Vahan', email: 'vah@vah.com', password: 'password')
    @category = Category.create(user: @user, name: 'Fruit',
                                icon: 'https://encrypted-tbn0.gstatic.com')
  end

  it 'checks if category attributes pass validation' do
    expect(@category).to be_valid
  end

  it 'checks if title is not blank' do
    @category.name = nil
    expect(@category).not_to be_valid
  end

  it 'checks if url is not blank' do
    @category.icon = nil
    expect(@category).not_to be_valid
  end

  it 'checks if url length is limited to up 250 chars' do
    @category.icon = 'Hello world Hello world Hello world Hello world Hello
    Hello world Hello world Hello world Hello world Hello world Hello world
    Hello world Hello world Hello world Hello world Hello world Hello world
    Hello world Hello world Hello world Hello world Hello world Hello world
    Hello world Hello world Hello world Hello world Hello world Hello world
    Hello world Hello world Hello world Hello world Hello world Hello world'
    expect(@category).not_to be_valid
  end
end
