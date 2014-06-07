require 'rails_helper'

describe 'Customer#show' do
  it 'lists all products of a Customer' do
    customer = FactoryGirl.create(:customer, name: 'John')
    product = FactoryGirl.create(:product, name: 'My New CD')
    customer.products << product
    visit customer_path(customer)

    expect(page).to have_content product.name
  end
end
