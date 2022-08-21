class CreatePlanets < ActiveRecord::Migration[6.1]
    def change
        create_table :planets do |t|
            t.string :name
            t.decimal :gravity
            t.decimal :density
            t.integer :perihelion
            t.integer :aphelion
            t.decimal :eccentricity
            t.decimal :escape_velocity
            t.integer :radius
            t.string :body_type
            t.string :discovered_by
            t.string :discovery_date
        end
    end
end