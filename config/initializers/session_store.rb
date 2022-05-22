    if Rails.env.production?
        Rails.application.config.session_store :cookie_store, :key => "_auth_app", domain: :all, httponly: false, tld_length: 2
    else
        Rails.application.config.session_store :cookie_store, key: "_auth_app", httponly: false

    end
