.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.conversation
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.image_speed

:[end]