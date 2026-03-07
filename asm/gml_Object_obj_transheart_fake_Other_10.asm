.localvar 0 arguments

:[0]
push.v self.mychoicey
push.v self.mychoicex
call.i distance_to_point(argc=2)
pushi.e 17
conv.i.d
div.d.v
pop.v.v self.spdr
push.v self.spdr
push.v self.mychoicey
push.v self.mychoicex
call.i move_towards_point(argc=3)
popz.v

:[end]