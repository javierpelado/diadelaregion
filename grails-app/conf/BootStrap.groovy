import com.diadelaregion.*
import grails.util.GrailsUtil

class BootStrap { 
	def init = { servletContext -> 
		switch(GrailsUtil.environment){
	      case "development":
			// Check whether the test data already exists. 
			def sectores = ["Almagro",
			"Illescas",
			"Herencia",
			"Ciudad Real",
			"Toledo la Mancha",
			"Fatima",
			"Macarena",
			"Pilar",
			"Lourdes",
			"Alcalá Virgen del Val"]
	//		if (!Sector.count()) { 
				//def ev = new Evento(nombre: "Día de la región",ciudad:"Illescas",provincia:"Toledo",fecha:new Date() + 1)
				//ev.save()
				//if(ev.hasErrors()){
	            //  println ev.errors
	            //}
				sectores.each() { it ->
					 //def s = new Sector(nombre: it)
					 //s.save(failOnError: true) 
					 (1..10).each{ index ->
					 	//println "${index}-${s}"
					 	new Pareja(
							nombreMarido: "nombreMarido" + index,
							apellidosMarido: "apellidoMarido" + index,
							nombreMujer:"nombreMujer" + index,
							apellidosMujer:"apellidoMujer" + index,
							email:"email@gmail.com",
							numeroDeNiños:2,
							sector:it,
							equipo:index,
							dateCreated: new Date()
					 	).save()
					 }
				}

			def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
			def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

			def testUser = new User(username: 'admin', enabled: true, password: 'password')
			testUser.save(flush: true)

			UserRole.create testUser, adminRole, true

			assert User.count() == 1
			assert Role.count() == 2
			assert UserRole.count() == 1
//		}
		}

	      case "development":
			def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
			def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

			def testUser = new User(username: 'admin', enabled: true, password: 'password')
			testUser.save(flush: true)

			UserRole.create testUser, adminRole, true

			assert User.count() == 1
			assert Role.count() == 2
			assert UserRole.count() == 1
 
	}

	def destroy = { } 
}