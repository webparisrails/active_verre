ActiveAdmin.register Produit do

permit_params :categorie, :titre, :description, :prix, :dispo
  
index do
  column :categorie
  column :titre do |a|
    link_to a.titre, admin_produit_path(a)
  end
  column :prix do |product|
    number_to_currency product.prix, :unit => "€"
  end
  column :dispo
  default_actions
end
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
