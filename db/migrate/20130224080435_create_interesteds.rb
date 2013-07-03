class CreateInteresteds < ActiveRecord::Migration
  def change
    create_table :interesteds do |t|

      t.timestamps
    end
  end
end
