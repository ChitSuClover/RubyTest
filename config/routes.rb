Rails.application.routes.draw do
  get 'contacts/new'
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :contacts do
    collection do
      post :confirm
    end
  end
end
