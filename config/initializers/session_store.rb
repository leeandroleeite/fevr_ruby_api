if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_fevr_ruby_api", domain: "localhost:3001"
else
    Rails.application.config.session_store :cookie_store, key: "_fevr_ruby_api"
end