module ProjectPortfolioHelper
  def render_thumbnail(portfolio)
    #if portfolio.thumbnail_url.blank?
    #  image_fu portfolio.thumbnail, nil
    #else
    #  image_tag(portfolio.thumbnail_url)
    #end
    image_fu portfolio.thumbnail, :medium
  end

  def render_image(portfolio)
    #if portfolio.image_url.blank?
    #  image_fu portfolio.image, :width => '400'
    #elsif portfolio.image_url.present?
    #  image_tag(portfolio.image_url, :width => '400')
    #end
    image_fu portfolio.image, nil
  end

end