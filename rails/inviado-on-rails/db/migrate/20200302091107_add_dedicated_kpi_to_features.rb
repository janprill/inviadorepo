class AddDedicatedKpiToFeatures < ActiveRecord::Migration[6.0]
  def change
    add_column :features, :ekrendite_prozent, :decimal
    add_column :features, :mitarbeiter, :integer
    add_column :features, :kassenbestand_eur, :decimal
    add_column :features, :personalaufwand_pro_mitarbeiter_eur, :decimal
    add_column :features, :umsatzrendite_prozent, :decimal
    add_column :features, :umsatz_pro_mitarbeiter_eur, :decimal
  end
end
