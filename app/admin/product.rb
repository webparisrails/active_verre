ActiveAdmin.register Product do
  permit_params :category, :name, :price, :availability, :description
  # belongs_to :category
#  navigation_menu :admin


#
#  index do
#    column :category
#    column :title do |a|
#      link_to a.title, admin_product_path(a)
#    end
#    column :prix do |product|
#      number_to_currency product.prix, :unit => "€"
#    end
#    column :dispo
#    default_actions
#  end

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
