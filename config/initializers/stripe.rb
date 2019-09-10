Rails.configuration.stripe = {
    publishable_key: Rails.application.secrets.stripe[:publishable_key],
    secret_key: Rails.application.secrets.stripe[:secret_key]
}

Stripe.api_key = Rails.application.secrets.stripe[:secret_key]
