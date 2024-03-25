object pepe {
	
	var categoria = cadete
	var bonoXresultado = resultadoNulo
	var bonoXpresentismo = presentismoNulo 
	var faltas = 0
	
	method sueldo(){
		return self.neto() + self.presentismo() + self.resultado()
	}
	
	method categoria(_categoria){
		categoria = _categoria
	}
	
	method neto(){
		return categoria.neto()
	}
	
	method bonoXresultado(_bonoXresultado){
		bonoXresultado = _bonoXresultado
	}
	
	method resultado(){
		return bonoXresultado.valor(self)
	}
	
	method bonoXpresentismo(_bonoXpresentismo){
		bonoXpresentismo = _bonoXpresentismo
	}
	
	method presentismo(){
		return bonoXpresentismo.valor(self)
	}
	
	
	method faltas(_faltas){
		faltas = _faltas
	}
	
	method faltas(){
		return faltas
	}
	
	
}


object normal{
	
	method valor(empleado){
		return if (empleado.faltas() == 0) 2000
		else if (empleado.faltas() == 1) 1000
		else 0 
	}
} 

object ajuste{
	method valor(empleado){
		return if (empleado.faltas() == 0) 100
		else 0
	}
}
 
object demagogico{
	method valor(empleado){
		return if (empleado.neto() < 18000) 500
		else 300
	}
}

object presentismoNulo{
	method valor(empleado){
		return 0
	}
}


object porcentaje{
	
	method valor(empleado){
		return empleado.neto() * 0.10
	}
}

object montoFijo{
	method valor(empleado){
		return 800
	}
}

object resultadoNulo{
	method valor(empleado){
		return 0
	}
}

object cadete{
	method neto(){
		return 20000
	}
}

object gerente{
	method neto(){
		return 15000
	}
}