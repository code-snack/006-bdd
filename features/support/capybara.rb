require 'capybara/rails'
require 'capybara/cuprite'

Capybara.server = :puma, { Silent: true }
Capybara.javascript_driver = :cuprite
Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(app, window_size: [1920, 1080], headless: inspector.blank?, timeout: 10, process_timeout: 10)
end
Capybara.save_path = 'tmp'
