ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    panel "Liste de Produit" do
      table_for Product.order('created_at desc').limit(10) do
        column "Categorie" do |a|
          link_to a.category, admin_category_path(a)
        end
        column "References" do |user|
          link_to user.name, admin_product_path(user)
        end
        column "Disponible" do |a|
          status_tag(a.availability? ? "Disponible" : "Indisponible", (a.availability ? :ok : :warning))
        end
      end
    end
  end
end
