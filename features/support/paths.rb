module NavigationHelpers
  module Refinery
    module ProjectPortfolios
      def path_to(page_name)
        case page_name
        when /the list of project_portfolios/
          admin_project_portfolios_path

         when /the new project_portfolio form/
          new_admin_project_portfolio_path
        else
          nil
        end
      end
    end
  end
end
