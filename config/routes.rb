EmployeeApp::Application.routes.draw do

  # How to do a homepage? Make a HomeController and index action?
  # root :to => "app/views/index.html"
  root :to => "teams#index"

  resources :teams do
    resources :employees
  end

  resources :employees do
    resource :profile
  end

end
