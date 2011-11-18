module Admin
  class ProjectPortfoliosController < Admin::BaseController

    crudify :project_portfolio,
            :title_attribute => 'project_name', :xhr_paging => true

  end
end
