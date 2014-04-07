class PageController < ApplicationController
  def home
    @titre = "Acceuil"
  end

  def contact
    @titre = "Contacts"
  end

  def my_account
    @titre = "Mon compte"
  end
end
