Rails.application.routes.draw do
  devise_for :users
  resources :tasks
  get 'top' => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "about" => "home#about"
  get "mypage" => "home#mypage"
  root to: "home#top"
end
