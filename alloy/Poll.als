module PollModule

open util/bool
open util/basetypes

open DateTimeSlot

sig Poll {
	hidden : Bool,
	limit : Limit,
	closed : Bool,
	options : some DateTimeSlot, //Multiplicity is right here
}
