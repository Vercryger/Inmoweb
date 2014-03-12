package org.grateds.inmoweb

class Building {
	enum Type {Campo, Quinta, Casa, Garage}
	enum Operation {Venta, Alquiler}
	
	Integer id
	Integer version
	Type type
	String description
	Long price = 0L
	Operation operation
	
	static hasOne = [adress : Adress]
	static belongsTo = [user : User, city : City]
	
	
    static constraints = {
		description maxSize: 1000
		price min: 0L
    }
}
