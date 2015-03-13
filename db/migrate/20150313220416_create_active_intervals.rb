class CreateActiveIntervals < ActiveRecord::Migration
  def change
    create_table :active_intervals do |t|
      t.belongs_to :poll, index: true
      t.datetime :activation
      t.datetime :end
      t.timestamps
    end
  end
end
