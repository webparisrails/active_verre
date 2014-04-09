ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }


  content :title => proc{ I18n.t("active_admin.dashboard") } do
        panel "Liste de Produit" do
          table_for Produit.order('created_at desc').limit(10) do
            column :categorie do |user|
              link_to user.categorie, admin_produit_path(user)
            end 
          end
        end
      end
end
