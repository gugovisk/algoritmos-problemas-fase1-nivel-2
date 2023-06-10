require_relative 'lib/produto'
require_relative 'lib/mercado'
 
produto = Produto.new
produto.nome = 'Tomate'
produto.preco = 2.50
 
Mercado.new(produto.nome, produto.preco).comprar