module Facts

open UserEventRepsonseCore

fact oneResponsePerEvent{
	all r, r' : Response |
		r.event = r'.event and r.user = r'.user implies
			r = r'
}

/*
See http://stackoverflow.com/questions/12976917/accumulation-of-union-of-sets
fact participantsAreReponseTrue{
	all e : Event |
		e.participants = sum u : User | 
			
}

fun trueResponses(e : Event){
	all r : Reponse |
		r.event = e and r.present = True
}
*/
