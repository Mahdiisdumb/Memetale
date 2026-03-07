.localvar 0 arguments

:[0]
push.s "music/intronoise.ogg"@2623
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.ii
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ii
call.i caster_play(argc=3)
popz.v
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.ok
pushi.e 0
pop.v.i self.jok
pushi.e 0
pop.v.i self.rot
pushi.e 0
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v
pushi.e 0
pop.v.i self.con

:[end]