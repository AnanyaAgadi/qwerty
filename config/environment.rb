# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
address: 'smtp.gmail.com',port: '587',
authentication: :plain,
user_name: ENV['tatamotorsenquiry@gmail.com'],
password: ENV['shw@1989'],
domain: 'heroku.com',
enable_starttls_auto: true
}

