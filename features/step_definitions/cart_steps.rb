Given(/^a product named "(.*?)" costing "(.*?)" euros$/) do |name, price|
  Product.create name: name, price: price
end

Given(/^I'm on the homepage$/) do
  visit '/'
end

Given(/^I add "(.*?)" unities of the product "(.*?)" to my cart$/) do |quantity, product_name|
  click_link product_name
  fill_in "cart_item[quantity]", with: quantity
  click_button I18n.t('products.show.add_to_cart')
end

Then(/^I should be redirected to the signup page$/) do
  current_url.should == new_user_session_url
end

When(/^I sign up$/) do
  visit '/'
  click_link I18n.t('sign_up')
  fill_in "user[email]", with: "test@toto.com"
  fill_in "user[password]", with: "thuantotu88"
  fill_in "user[password_confirmation]", with: "thuantotu88"
  click_button I18n.t('sign_up')
end

When(/^I checkout$/) do
  click_link I18n.t('checkout')
  fill_in I18n.t('carts.show.card_number'), with: "4242424242424242"
  fill_in I18n.t('carts.show.cvc'), with: "123"
  fill_in "expirationmm", with: "12"
  fill_in "expirationyear", with: Date.today.year + 1
  click_button I18n.t("carts.show.submit_payment")
end

Then(/^I should receive a confirmation email$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the website admin should receive a confirmation email$/) do
  pending # express the regexp above with the code you wish you had
end