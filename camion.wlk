import cosas.*


object camion {
var pesoCamion = 1000
var peligrosidad = 0 
const cosas = #{} 

method peso() {
  return pesoCamion + cosas.sum({cosa => cosa.peso()})
}

method cargarCosas(cosa) {
  cosas.add(cosa)
}
method descargarCosas(cosa) {
  cosas.remove(cosa)
}

method losPesosSonPares() {
  return cosas.all({ cos => cos.pesoCosa().even() })
}

method algunaPesa(cantCosa) {
  return cosas.any({cos => cos.pesoCosa() == cantCosa})
}

method controlDePeligrosidad(nivelPeligrosidad) {
  return cosas.find({cos => cos.peligrosidad() == nivelPeligrosidad})
}
method superanNivelDePeligrosidad(nivelPeligro) {
  return cosas.filter({cos => cos.peligrosidad() > nivelPeligro})
}

method cosasMasPeligrosasQue(unaCosa) {
  return cosas.filter({cos => cos.peligrosidad() > unaCosa.peligrosidad()})
}

method camionExcedidoDePeso() {
  return self.peso() > 2500
}

method camionCircuilaSi(nivelPeligrosidad) {
  
  return !self.camionExcedidoDePeso() and self.superanNivelDePeligrosidad(nivelPeligrosidad).isEmpty()
}

method valoresDeLasCosasEntre(valormin, valormax) {
  return cosas.any({cos => cos.between(valormin, valormax)})
}

}


//LA PARTE 2, DE LOS BULTOS NO LA ENTIENDO