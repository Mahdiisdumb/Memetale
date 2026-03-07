.localvar 0 arguments

:[0]
push.v self.cutsfx
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i 489.visible
pushi.e 1
pop.v.i 490.visible
pushi.e 255
pop.v.i 490.color
pushi.e 1
pop.v.i 490.armtest
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight

:[end]