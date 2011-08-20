Dado /^que eu quero cadastrar um restaurante$/ do
  visit "/"
end

Dado /^eu estou na pagina de restaurante$/ do
  visit "/restaurantes/new"
end

Dado /^eu preencho o campo "([^"]*)" com "([^"]*)"$/ do |campo, valor|
  fill_in campo, :with => valor
end

Dado /^eu aperto o botao "([^"]*)"$/ do |botao|
  click_button botao
end

Entao /^eu deveria ver o restaurante cadastrado$/ do
  page.should have_content "Ola"
end
