# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  url = Rails.env == 'production' ? 'https://arn-gdt-assessment.netlify.app' : 'http://localhost:3000'
  allowed_methods = %i[get post put patch delete options head]
  allow do
    origins url
    resource '*', headers: :any, methods: allowed_methods, credentials: false
  end
end
