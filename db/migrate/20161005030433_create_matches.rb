class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :host, references: :teams
      t.references :visitor, references: :teams
      t.references :round, index: true, foreign_key: true
      t.references :league, index: true, foreign_key: true
      t.integer :host_score
      t.integer :visitor_score

      t.timestamps null: false
    end

    add_foreign_key :matches, :teams, column: :host_id
    add_foreign_key :matches, :teams, column: :visitor_id
  end
end
