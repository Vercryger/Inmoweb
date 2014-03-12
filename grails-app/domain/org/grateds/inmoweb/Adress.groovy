package org.grateds.inmoweb

class Adress {
	
	Integer id
	Integer version
	String neighborhood
	String street
	Integer home_number
	
	static hasOne = [city : City]
	static belongsTo = [users : User, buildings : Building, realEstates : RealEstate]
	
    static constraints = {
		neighborhood blank: false
		street blank: false
		home_number blank : false, min : 0I
    }
}
