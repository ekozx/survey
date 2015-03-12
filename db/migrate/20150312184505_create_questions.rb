class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.boolean, :odh
      t.string :question
      t.integer :poll_id

      t.timestamps
    end
  end
end
