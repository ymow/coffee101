class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :plan

      t.timestamps
    end
  end
end
