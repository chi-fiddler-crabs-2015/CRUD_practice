class CreateShirts < ActiveRecord::Migration
  def change
    create_table  :shirts do |t|
      t.belongs_to :designer
    end
  end
end
