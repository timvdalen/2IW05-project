module VoteModule

open dummy/DateTimeSlot
open dummy/User

sig Vote {
	dateTimeSlot : one DateTimeSlot,
	usersAgreed: some User //TODO: Multiplicity is actually 0..*
}
