require 'rails_helper'

describe 'Customer Management' do
  scenario 'Creating a new customer' do
    visit new_customer_path

    fill_in 'First Name', with: 'Diego'
    fill_in 'Last Name', with: 'Selzlein'
    click_on 'Save'

    expect(page).to have_content('Diego Selzlein')
    customer = Customer.last
    expect(customer.first_name).to eq('Diego')
    expect(customer.last_name).to eq('Selzlein')
  end

  scenario 'Trying to create an invalid customer' do
    visit new_customer_path

    click_on 'Save'

    expect(page).to have_content('First Name is required')
    expect(page).to have_content('Last Name is required')
  end
end
