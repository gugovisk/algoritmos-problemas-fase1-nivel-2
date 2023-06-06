require "./lib/produto.rb"

class Mercado
    def initialize(produto, preco)
      @produto = produto
      @preco = preco
    end
    
    def comprar
      return "Você comprou o produto #{@produto} no valor de #{@preco}"
    end
end