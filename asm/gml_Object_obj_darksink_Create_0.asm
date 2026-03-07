.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.acon
pushi.e 0
pop.v.i self.wcon
pushi.e 0
pop.v.i self.anim
pushi.e 0
pop.v.i self.aanim
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.dont
pushi.e 0
pop.v.i self.how_bad_me_key
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.kanim

:[end]