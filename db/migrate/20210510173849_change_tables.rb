class ChangeTables < ActiveRecord::Migration[6.0]
  def change
  	remove_column :books,:year
  	add_column :books,:publusher,:string
  	rename_column :employees,:name,:emp_name
  	remove_timestamps :employees
  end
end
