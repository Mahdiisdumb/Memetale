.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
push.d 0.45
conv.d.v
push.v self.gmusic
call.i caster_loop(argc=3)
pop.v.v self.gm1
push.d 0.25
conv.d.v
push.v self.gm1
call.i caster_set_panning(argc=2)
popz.v
pushi.e 1
conv.i.v
push.d 0.45
conv.d.v
push.v self.gmusic
call.i caster_loop(argc=3)
pop.v.v self.gm2
push.d 0.5
conv.d.v
push.v self.gm2
call.i caster_set_panning(argc=2)
popz.v
pushi.e 1
conv.i.v
push.d 0.45
conv.d.v
push.v self.gmusic
call.i caster_loop(argc=3)
pop.v.v self.gm3
push.d 0.75
conv.d.v
push.v self.gm3
call.i caster_set_panning(argc=2)
popz.v
pushi.e 6
pop.v.i self.con
push.s "flowey_haha"@31782
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.str
push.v self.str
push.s "#"@6300
push.v self.str
add.v.s
add.v.v
pop.v.v self.str
pushi.e 190
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 52
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]