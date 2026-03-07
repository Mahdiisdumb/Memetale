.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 2
cmp.i.v LT
bf [4]

:[3]
push.s "music/spoopy.ogg"@2652
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.spoopy
push.s "music/spoopy_wave.ogg"@2653
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.spoopywave
push.s "music/spoopy_holiday.ogg"@2654
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.spoopyholiday
push.s "music/napstachords.ogg"@2657
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.napstachords
b [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 0
pop.v.i self.songplaying
pushi.e 0
pop.v.i self.fadeout
pushi.e 0
pop.v.i self.curvol
pushi.e 0
pop.v.i self.con

:[end]