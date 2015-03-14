class CreateRespondents < ActiveRecord::Migration
  def change
    create_table :respondents do |t|
      t.integer :guardian_age
      t.integer :resident_age
      t.boolean :is_guardian
      t.boolean :gender
      t.integer :race
      t.integer :relationship
      t.integer :visit_frequency
      t.integer :expected_stay

      t.boolean :finished
      t.integer :email
      t.string :key

      t.belongs_to :poll_intervals, index: true
      t.belongs_to :organization, index: true
      t.belongs_to :poll, index: true

      t.timestamps
    end
  end
end
