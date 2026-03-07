.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.stir
pushi.e 0
pop.v.i self.stiranim
pushi.e 0
pop.v.i self.stime
pushi.e 0
pop.v.i self.sval
pushi.e 0
pop.v.i self.wrong
pushi.e 0
pop.v.i self.wrongval
pushi.e 0
pop.v.i self.hot
pushi.e 0
pop.v.i self.jingle
push.s "music/bgflameA.ogg"@2709
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.fire
push.d 0.7
conv.d.v
push.d 0.5
conv.d.v
push.v self.fire
call.i caster_loop(argc=3)
popz.v
push.s "music/rotate.ogg"@2703
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.rot

:[end]