.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.dontfade
pushi.e 8
pop.v.i global.typer
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.conversation
pushi.e 1
pop.v.i global.faceemotion
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 7
conv.i.v
push.s "000100000"@47959
conv.s.v
call.i action_move(argc=2)
popz.v

:[end]