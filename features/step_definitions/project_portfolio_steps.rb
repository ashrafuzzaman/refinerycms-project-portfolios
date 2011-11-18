Given /^I have no project_portfolios$/ do
  ProjectPortfolio.delete_all
end

Given /^I (only )?have project_portfolios titled "?([^\"]*)"?$/ do |only, titles|
  ProjectPortfolio.delete_all if only
  titles.split(', ').each do |title|
    ProjectPortfolio.create(:project_name => title)
  end
end

Then /^I should have ([0-9]+) project_portfolios?$/ do |count|
  ProjectPortfolio.count.should == count.to_i
end
