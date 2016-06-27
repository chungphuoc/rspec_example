class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.references :job, index: true
      t.string :full_name
      t.timestamps null: false
    end
  end
end
