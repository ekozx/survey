class CreatePollIntervals < ActiveRecord::Migration
  def change
    create_table :poll_intervals do |t|
      t.belongs_to :poll, index: true
      t.datetime :start
      t.datetime :end
      t.timestamps
    end

    change_table(:questions) do |t|
      t.remove_belongs_to :poll
      t.belongs_to :poll_intervals, index: true
    end
  end
end
