module ProjectPortfolioHelper
  def load_thumbnail(project_portfolio)
    if project_portfolio.thumbnail_url.empty?
      image_fu project_portfolio.thumbnail, nil
    else
      image_tag(project_portfolio.thumbnail_url)
    end
  end
end