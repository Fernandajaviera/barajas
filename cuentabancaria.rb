class Usuario 
    attr :nombre
    def initialize(nombre, saldo_total = 0)
        @nombre = nombre
        @saldo_total = saldo_total
        puts "Hola #{@nombre}, tienes $#{@saldo_total} en tu cuenta"
    end
end
class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo
    def initialize(banco, numero_de_cuenta, saldo = 1)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
        puts "Hola #{@nombre} Se creo la cuenta en #{@banco}"
    end

    def transferir(monto, cuenta)
        @saldo_total = @saldo - monto
        cuenta.saldo = cuenta.saldo + monto
    end
end
c1 = CuentaBancaria.new("Banco A", "12345678-9")
c2 = CuentaBancaria.new("Banco B", "98765423-1")
p1 = Usuario.new("Rafa")
p2 = Usuario.new("Ignacio")
c1.transferir(200)
c2.transferir(100)