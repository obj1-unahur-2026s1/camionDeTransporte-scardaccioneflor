import camion.*

object knightRider {
  var peso = 500
  var peligrosidad = 10
  method peso() =  peso
  method peligrosidad() = peligrosidad  
}

object bumblebee {
  var estaTransformado = true
  method peso() {
    return 800
  }
 method cambiarModo() {
   estaTransformado = !estaTransformado
 }

  method peligrosidad() {
    if(estaTransformado) {
      15
    }
    else 30 //robot 
  }
}

object paqueteDeLadrillos {
 
  var cantidadDeLadrillo = 0
  const peligrosidad = 2 
  method peso() {
    return cantidadDeLadrillo*2
  }
   method cantidadDeLadrillos(cantidad) {
    cantidadDeLadrillo = cantidad
  }


 method peligrosidad() = peligrosidad  
}

object arenaGranel {
  var pesoArena = 0
  const peligrosidad = 1
  method peso() {
    return pesoArena 
  }
  method cambiarPeso(nuevoPeso) { //como el peso es variable hya que hacer este metodo para que cambie
    pesoArena = nuevoPeso
  }
  method peligrosidad() = peligrosidad
}

object bateriaAntiaerea {
 var tieneMisiles = true 
 method cambiarModo() { // en este solo cambia de modo, por eso no lleva el return 
   tieneMisiles = !tieneMisiles
 }


  method peso() {  
 return if(tieneMisiles)  300 else 200
}
method peligrosidad() {
 return if(tieneMisiles) 100 else 0
}
}

object contenedorPortuario {
  const elementos = []
 method agregarCosas(unElemento) {
   elementos.add(unElemento)
 }

 method sacarCosas(unElemento) {
   elementos.remove(unElemento)
 }
 
  method peso() = 100 + elementos.sum({elem => elem.peso()})
   method peligrosidad()= if(!elementos.isEmpty()) self.elementoMasPeligroso() else 0 // cheuqea sino esta vacia la lista
    
    method elementoMasPeligroso()= elementos.max({elemento=> elemento.peligrosidad()})
}

object residuosradiactivos {
  var property peso =  0
  method peligrosidad() {
    return 200
  } 
}

object embalajeDeSeguridad {
  var cosaEnvuelta = bateriaAntiaerea
 method envolver(cosa) {
   cosaEnvuelta = cosa
 }


method peso() {
  return cosaEnvuelta.peso()
}
method peligrosidad() = cosaEnvuelta.peligrosidad()*0.5

}










