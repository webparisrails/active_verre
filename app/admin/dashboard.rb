ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
        panel "Liste de Produit" do
          table_for Produit.order('created_at desc').limit(10) do
            column "Categorie" do |a|
              link_to a.categorie, admin_produit_path(a)
            end
            column "References" do |user|
              link_to user.titre, admin_produit_path(user)
            end
            column "Disponible" do |a|
              status_tag(a.dispo? ? "Disponible" : "Indisponible", (a.dispo? ? :ok : :warning))
            end
          end
        end
      end
end
