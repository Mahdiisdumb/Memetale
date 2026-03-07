.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 170
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.oo
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.a_x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.a_y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.a_y2
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pop.v.v self.a_x2
push.s "music/sfx/sfx_star.ogg"@2799
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx
push.s "music/explosion.ogg"@2722
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.expl
pushi.e 12
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.off
pushi.e 0
pop.v.i self.h_mode

:[end]