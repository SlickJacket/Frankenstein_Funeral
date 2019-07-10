class CreateSkeletons < ActiveRecord::Migration[5.2]
    def change 
        create_table :skeletons do |t|
            t.string :name
            t.integer :user_id
            t.integer :part_id
        end
    end
end