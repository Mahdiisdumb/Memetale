.localvar 0 arguments

:[0]
push.s "music/snoresymphony.ogg"@2837
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.specialsong
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.fadein
pushi.e 1
pushi.e -5
pushi.e 73
pop.v.i [array]global.flag
pushi.e 880
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.vol
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact

:[end]