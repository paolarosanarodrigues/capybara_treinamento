Dado("que acesso o site da UOL") do
  visit "http://www.uol.com.br/"
end

Dado("acesso a página de Economia") do
  find(:css, 'li.menu-uol-item.area-economia').click
  find('#calculadora').visible?
end

Quando("converto {int} reais para moeda dólar") do |valor|
  find(:select, 'de').first(:option, 'Brasil - Real').select_option
  find(:select, 'para').first(:option, 'Estados Unidos - Dólar Americano').select_option
  fill_in 'valor', :with => valor
  click_button 'Converter'
end

Então("verifico que o resultado é menor que {int} dólares") do |int|

  #obtem somente o valor numérico da string
  conversao= find(:id, 'resultado').text
  conversao.slice! "Resultado: "
  resultado= conversao.gsub(",", ".")

  if (Float(resultado) < 1000.00) == true
    puts(resultado + " dólares é menor que 1000 dólares.")
  else
    fail resultado + " dólares é maior ou igual a 1000 dólares."
  end
end
