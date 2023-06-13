class Carro
    def initialize(nome = "Modelo Padrão")
      @nome = nome
    end

    attr_accessor :nome, :porta, :painel, :roda
    attr_reader :pneu

    def mostrar(marca="Marca Padrão")
      puts "Marca: #{marca} - Modelo: #{self.nome} - #{algo_mais}"
    end

    private
    def algo_mais
      "este é um método privado para retornar algo a mais"
    end
  end

  fiesta = Carro.new

  golf = Carro.new

  def golf.mostrar 
   "Mostrar do Golf"
  end

  def fiesta.mostrar 
    "Mostrar do Fiesta"
  end