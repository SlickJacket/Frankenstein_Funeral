class CreateBodyParts < ActiveRecord::Migration[5.2]
    def change 
        create_table :bodyparts do |t|
            t.string :name
        end
    end
end