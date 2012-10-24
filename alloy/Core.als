module CoreModule

/*
	During the writing of this model, I tried to keep as many base types in separated files as possible.
	However, in the end every type with functionality had to be in one file.
	I was however able to separate facts and preds from the sigs
*/

open util/bool
open util/basetypes

open DateTimeSlot

sig Poll {
	hidden : Bool,
	limit : Limit,
	closed : Bool,
	options : some DateTimeSlot, //Multiplicity is right here
	votes : some Vote
}

sig Vote {
	dateTimeSlot : one DateTimeSlot,
	usersAgreed: some User //TODO: Multiplicity is actually 0..*
}

sig Event {
	id : ID,
	name : NameType,
	description : DescriptionType,
	optionalMessage : DescriptionType,
	participants : some User,
	poll : Poll,
	organizer : User,
	responses : some Response
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
	organizedEvents : some Event,//TODO: Again, multiplicity
	responses : some Response,
	castVotes : some Vote
}
