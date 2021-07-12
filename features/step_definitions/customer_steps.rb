When('I create the following customer:') do |table|
  attributes = table.rows_hash
  # => { 'First Name' => 'Diego', 'Last Name' => 'Selzlein' }

  visit new_customer_path

  fill_in 'First Name', with: attributes['First Name']
  fill_in 'Last Name', with: attributes['Last Name']
  click_on 'Save'
end

Then('I should have the following customers:') do |table|
  table.diff!(Customer.all.map(&:attributes))
end
