Rails.application.routes.draw do
  
  root "home#index"

  get "/twitter", to: "sns#twitter"
  post "/twitter", to: "sns#twitterSearch"
  
  get "/linkedin", to: "sns#linkedin"
  post "/linkedin", to: "sns#linkedinSearch"

  get "/tiktok", to: "sns#tiktok"
  post "/tiktok", to: "sns#tiktokSearch"

  get "/instagram", to: "sns#instagram"
  post "/instagram", to: "sns#instagramSearch"
end
