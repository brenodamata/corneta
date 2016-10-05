class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.references :league, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
