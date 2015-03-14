class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.belongs_to :poll_interval, index: true
      t.timestamps
    end
  end
end
