class RecreateQuestions < ActiveRecord::Migration
  def change
    drop_table :questions
    create_table :questions do |t|
      t.boolean :odh
      t.string :question
      t.belongs_to :poll_interval, index:true
      t.belongs_to :categories, index:true
    end
  end
end
