Rails.application.routes.draw do
  resources :applications do
    resources :application_targets
  end
end
