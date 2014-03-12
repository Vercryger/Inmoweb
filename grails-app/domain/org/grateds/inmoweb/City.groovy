package org.grateds.inmoweb

class City {
	
	Integer id
	Integer version
	String name
	
	static hasMany = [adresses : Adress]
	
	static constraints = {
    	name blank: false, unique: true
	}
	
	String toString()  {return name}
}
