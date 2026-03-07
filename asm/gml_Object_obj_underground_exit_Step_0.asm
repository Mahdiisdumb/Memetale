.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 812
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v 1576.y
pushi.e 5
add.i.v
pop.v.v 1576.y
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con

:[7]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [9]

:[8]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 11
pop.v.i self.con
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.vol

:[12]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [15]

:[13]
push.v self.vol
push.d 0.02
sub.d.v
pop.v.v self.vol
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.vol
push.d 0.02
cmp.d.v LTE
bf [15]

:[14]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 12
pop.v.i self.con
push.s "music/cymbal.ogg"@2624
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cym
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.cym
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.zr

:[15]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [17]

:[16]
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.z
pushi.e 2
push.v self.z
conv.v.i
pop.v.i [stacktop]self.ex
pushi.e 13
pop.v.i self.con

:[17]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [end]

:[18]
push.v self.zr
pushi.e 1
add.i.v
pop.v.v self.zr
push.v self.zr
pushi.e 136
cmp.i.v GTE
bf [end]

:[19]
pushi.e 241
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 14
pop.v.i self.con

:[end]