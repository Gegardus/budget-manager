require 'rails_helper'

RSpec.describe Proceeding, type: :model do
  before(:each) do
    @user = User.create(name: 'Vahan', email: 'vah@vah.com', password: 'password')
    @category = Category.create(user: @user, name: 'Fruit',
                                icon: 'https://encrypted-tbn0.gstatic.com')
    @proceeding = Proceeding.create(category: @category, name: 'Fruit', amount: 14)
  end

  it 'checks if transaction attributes are valid' do
    expect(@proceeding).to be_valid
  end

  it 'checks if title is not blank' do
    @proceeding.name = nil
    expect(@proceeding).not_to be_valid
  end

  it 'if payment amount is not blank' do
    @proceeding.amount = nil
    expect(@proceeding).not_to be_valid
  end

  it 'if payment amount is number' do
    @proceeding.amount = 'NAN'
    expect(@proceeding).not_to be_valid
  end

  it 'checks if title is not exceeding 250 characters' do
    @proceeding.name = 'Hello world Hello world Hello world Hello world Hello
    Hello world Hello world Hello world Hello world Hello world Hello world
    Hello world Hello world Hello world Hello world Hello world Hello world
    Hello world Hello world Hello world Hello world Hello world Hello world
    Hello world Hello world Hello world Hello world Hello world Hello world
    Hello world Hello world Hello world Hello world Hello world Hello world'
    expect(@proceeding).to_not be_valid
  end
end
