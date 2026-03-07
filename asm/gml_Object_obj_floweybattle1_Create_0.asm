.localvar 0 arguments

:[0]
pushglb.v global.currentsong
pop.v.v self.floweysong
pushi.e 1
pop.v.i global.inbattle
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 3
pop.v.i global.border
pushi.e 0
pop.v.i self.conversation
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i SCR_BORDERSETUP(argc=5)
popz.v

:[end]