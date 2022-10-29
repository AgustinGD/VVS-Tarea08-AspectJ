import logica.entidades.infectados.Alpha;
import logica.entidades.infectados.Beta;
import logica.entidades.jugador.Jugador;
import logica.entidades.proyectiles.Proyectil_Jugador;
import logica.entidades.proyectiles.Proyectil_Infectado;
import logica.entidades.premios.Premio;

public aspect Control {	
	// Mostrar en consola cuando se crea al Jugador
	after() returning (Jugador entidad): call(* crearEntidad()) {
		System.out.println("(A) Se creo al jugador");
	}
	
	// Mostrar en consola cuando se crea un infectado Alpha
	after() returning (Alpha entidad): call(* crearEntidad()) {
		System.out.println("(B) Se creo un infectado Alpha");
	}

	// Mostrar en consola cuando se crea un infectado Beta
	after() returning (Beta entidad): call(* crearEntidad()) {
		System.out.println("(C) Se creo un infectado Beta");
	}
	
	// Mostrar en consola cuando el jugador hace un disparo
	after() returning (Proyectil_Jugador entidad): call(* crearEntidad()) {
		System.out.println("(D) El jugador disparó");
	}
	
	// Mostrar en consola cuando un infectado hace un disparo
	after() returning (Proyectil_Infectado entidad): call(* crearEntidad()) {
		System.out.println("(E) Un infectado disparó");
	}
	
	// Mostrar en consola cuando se suelta un premio
	after() returning (Premio entidad): call(* crearEntidad()) {
		System.out.println("(F) Se creo un premio");
	}
}
