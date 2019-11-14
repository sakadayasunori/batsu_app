Rails.application.routes.draw do
  devise_for :users
  resources :tasks
  get 'top' => "homes#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "about" => "homes#about"
  get "mypage" => "homes#mypage"
  root to: "homes#top"
end
