.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.facescale
pushi.e 0
pop.v.i self.facey
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.aa
pushi.e 12
pop.v.i self.bb
pushi.e 1
pop.v.i self.cc
pushi.e 8
pop.v.i self.dd
pushi.e 1
pop.v.i self.a
pushi.e 12
pop.v.i self.b
pushi.e 1
pop.v.i self.c
pushi.e 8
pop.v.i self.d
pushi.e 0
pop.v.i self.c_counter
push.s "music/sfx/sfx_hypergoner_laugh.ogg"@2803
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.gl
push.s "music/sfx/sfx_hypergoner_charge.ogg"@2797
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.gc

:[end]