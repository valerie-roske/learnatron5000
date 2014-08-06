class CreateLearnings < ActiveRecord::Migration
  def change
    create_table :learnings do |t|
      t.string :learner_name
      t.string :what_was_learned

      t.timestamps
    end
  end
end
