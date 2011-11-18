::Refinery::Application.routes.draw do
  resources :project_portfolios, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :project_portfolios, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
