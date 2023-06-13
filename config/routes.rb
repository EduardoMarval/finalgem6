Rails.application.routes.draw do

resources :job_applications

root 'pages#home'

devise_for :users, :controllers => {registrations:
'users/registrations'}

resources :job_offers do
  resources :job_applications, only: [:index,:create]
end


end

