Rails.application.routes.draw do
  resources :incidents, except: %w(edit update destroy) do
    resources :incident_details, except: %w(edit update destroy)
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "incidents#index" 
end
