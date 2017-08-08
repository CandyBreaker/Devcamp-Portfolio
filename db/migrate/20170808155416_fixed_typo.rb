class FixedTypo < ActiveRecord::Migration[5.1]
  def change
    rename_column :skills, :percent_uilized, :percent_utilized
  end
end
