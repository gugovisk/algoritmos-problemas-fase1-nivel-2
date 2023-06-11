class Abstrata < Interface
    def initialize
      raise "Classe não pode ser implementada, somente herdada"
    end

    def test1
      raise "Classe não pode ser implementada"
    end

    def test2
      "este é o teste 2"
    end
end