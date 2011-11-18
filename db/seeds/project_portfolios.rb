if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'project_portfolios').blank?
      user.plugins.create(:name => 'project_portfolios',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Project Portfolios',
    :link_url => '/project_portfolios',
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/project_portfolios(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end