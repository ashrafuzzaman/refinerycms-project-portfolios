require 'spec_helper'

describe ProjectPortfolio do

  def reset_project_portfolio(options = {})
    @valid_attributes = {
      :id => 1,
      :project_name => "RSpec is great for testing too"
    }

    @project_portfolio.destroy! if @project_portfolio
    @project_portfolio = ProjectPortfolio.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_project_portfolio
  end

  context "validations" do
    
    it "rejects empty project_name" do
      ProjectPortfolio.new(@valid_attributes.merge(:project_name => "")).should_not be_valid
    end

    it "rejects non unique project_name" do
      # as one gets created before each spec by reset_project_portfolio
      ProjectPortfolio.new(@valid_attributes).should_not be_valid
    end
    
  end

end