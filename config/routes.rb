Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }

  #sets the home apge to be log in
  root to: redirect("/users/sign_in")
get 'tailwind_test/TestPage', to: 'tailwind_test#TestPage'

  resources :rooms, only: [:index, :show] do
    resources :messages, only: [:create]
  end
end