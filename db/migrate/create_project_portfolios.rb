class CreateProjectPortfolios < ActiveRecord::Migration

  def self.up
    create_table :project_portfolios do |t|
      t.string :project_name
      t.string :title
      t.integer :thumbnail_id
      t.string :thumbnail_url
      t.integer :image_id
      t.string :image_url
      t.text :description
      t.integer :position

      t.timestamps
    end

    add_index :project_portfolios, :id

    load(Rails.root.join('db', 'seeds', 'project_portfolios.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "project_portfolios"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/project_portfolios"})
    end

    drop_table :project_portfolios
  end

end
