.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.bombtype
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.con
call.i scr_depth(argc=0)
popz.v
pushi.e 1
pop.v.i self.tangible
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.cc
pushi.e 0
pop.v.i self.watercancel
pushi.e 0
pop.v.i self.b_buffer

:[end]