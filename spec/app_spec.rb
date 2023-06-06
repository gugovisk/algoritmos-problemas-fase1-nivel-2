require "./lib/mercado.rb"

RSpec.describe Mercado do

    it "compra de tomate" do
        produto = Produto.new
        produto.nome = 'Tomate'
        produto.preco = '2.50'
     
        res = Mercado.new(produto.nome, produto.preco).comprar
    
        expect(res).to eq("Você comprou o produto Tomate no valor de 2.50") 
    end
    
end