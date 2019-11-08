class Tasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :image_name, :string
  end
end
