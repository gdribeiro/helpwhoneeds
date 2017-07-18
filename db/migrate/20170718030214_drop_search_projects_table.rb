class DropSearchProjectsTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :search_projects
  end
end
