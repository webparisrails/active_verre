ActiveAdmin.register Category do

  permit_params :name
#  sidebar "Product ma geul" do
#    ul do
#      li link_to("Double vitrage", new_admin_category_product_path(:id))
#    end
#  end
 # index do
 #   column :name do |a|
 #     link_to a.name, admin_category_products_path(a)
 #   end
#  default_actions
 # end
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
