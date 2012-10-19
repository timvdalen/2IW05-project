module CoreModule

open util/bool
open util/basetypes

open dummy/Poll

sig Event {
	id : ID,
	name : NameType,
	description : DescriptionType,
	optionalMessage : DescriptionType,
	participants : some User,
	poll : Poll
}

sig Response{
	present : Bool,
	event : Event,
	user : User
}

sig User{
	id : ID,
	name : NameType,
	password: PassType,
	emailAddress : EmailType,
	organizedEvents : some Event//TODO: Again, multiplicity
}
