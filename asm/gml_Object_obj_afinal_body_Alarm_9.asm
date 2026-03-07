.localvar 0 arguments

:[0]
push.v self.psfx
call.i caster_stop(argc=1)
popz.v
push.d 0.5
push.v self.ps
pushi.e 6
conv.i.d
div.d.v
add.v.d
push.d 0.6
push.v self.ps
pushi.e 8
conv.i.d
div.d.v
add.v.d
push.v self.psfx
call.i caster_play(argc=3)
popz.v
push.v self.ps
pushi.e 1
add.i.v
pop.v.v self.ps
push.v self.ps
pushi.e 6
cmp.i.v LT
bf [end]

:[1]
pushi.e 5
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[end]