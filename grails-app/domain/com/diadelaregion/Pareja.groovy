package com.diadelaregion

class Pareja {

	String nombreMarido
	String apellidosMarido
	String nombreMujer
	String apellidosMujer
	String email
	Integer numeroDeNiños
	String edadesDeLosNiños
	String sector
	Integer equipo
	Date dateCreated


	static constraints = {
		nombreMarido(maxSize:50)
		apellidosMarido(maxSize:100)
		nombreMujer(maxSize:50)
		apellidosMujer(maxSize:100)
      	email(email:true)
		numeroDeNiños()
		edadesDeLosNiños()
      	equipo()
      	sector(inList:["Almagro",
		"Illescas",
		"Herencia",
		"Ciudad Real",
		"Toledo la Mancha",
		"Fatima",
		"Macarena",
		"Pilar",
		"Lourdes",
		"Alcalá Virgen del Val"])
	}

	String toString() {
		"[${this.sector} - ${this.equipo}] ${this.nombreMarido} ${this.apellidoMarido} y ${this.nombreMujer} ${this.apellidoMujer}"
	}
}
