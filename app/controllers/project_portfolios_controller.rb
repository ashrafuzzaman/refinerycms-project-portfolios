class ProjectPortfoliosController < ApplicationController

  before_filter :find_all_project_portfolios
  before_filter :find_page
  helper :project_portfolio 

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @project_portfolio in the line below:
    #present(@page)
    @portfolios = ProjectPortfolio.all
    @tags = ProjectPortfolio.tag_counts_on(:tags)
  end

  def show
    @project_portfolio = ProjectPortfolio.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @project_portfolio in the line below:
    present(@page)
  end

protected

  def find_all_project_portfolios
    @project_portfolios = ProjectPortfolio.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/project_portfolios").first
  end

end
