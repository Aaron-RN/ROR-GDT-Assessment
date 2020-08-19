# frozen_string_literal: true

# url = Rails.env == 'production' ? 'https://arn-gdt-assessment.herokuapp.com' : 'http://localhost:3000'
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  url = Rails.env == 'production' ? '*' : 'http://localhost:3000'
  allowed_methods = %i[get post put patch delete options head]
  allow do
    origins url
    resource '*', headers: :any, methods: allowed_methods, credentials: false
  end
end
