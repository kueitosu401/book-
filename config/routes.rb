Rails.application.routes.draw do
root to: 'homes#index'
 # get 'books/index'
 # get 'books/show'
 #  get 'books/new'
 #  get 'books/edit'
 #  get 'bookers/index'
 #  get 'bookers/show'
 #  get 'bookers/new'
 #  get 'bookers/edit'
 #  get 'blogs/index'
 #  get 'blogs/show'
 #  get 'blogs/new'
 #  get 'blogs/edit' デフォルトであったルートを念のため残しておく ただしhomsは削除
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :books

end
