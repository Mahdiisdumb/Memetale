.localvar 0 arguments

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [6]

:[1]
push.v 1576.x
push.v self.x
cmp.v.v GT
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 2
pop.v.i global.facing
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.visible
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v 1576.x
pushi.e 6
add.i.v
pop.v.v self.x
push.v 1576.y
pushi.e 16
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.con

:[6]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i global.facing
push.s "music/sfx_generate.ogg"@2730
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.tr
push.d 0.9
pop.v.d self.con
pushi.e 55
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
push.d 0.9
cmp.d.v EQ
bf [10]

:[9]
pushi.e 2
pop.v.i global.facing

:[10]
push.v self.con
push.d 1.9
cmp.d.v EQ
bf [12]

:[11]
push.d 1.2
conv.d.v
push.d 0.8
conv.d.v
push.v self.tr
call.i caster_play(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[13]
push.d 0.25
pop.v.d self.image_speed
push.v self.image_index
pushi.e 3
cmp.i.v GTE
bf [15]

:[14]
pushi.e 0
pop.v.i self.image_speed
push.d 2.9
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[15]
push.v self.con
push.d 3.9
cmp.d.v EQ
bf [17]

:[16]
push.d 0.7
conv.d.v
push.d 0.9
conv.d.v
push.v self.tr
call.i caster_play(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[17]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [20]

:[18]
push.d 0.5
pop.v.d self.image_speed
push.v self.image_index
pushi.e 11
cmp.i.v GTE
bf [20]

:[19]
pushi.e 0
pop.v.i self.image_speed
pushi.e 5
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [22]

:[21]
push.v self.tr
call.i caster_free(argc=1)
popz.v
pushi.e 83
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.mercy
pushi.e 0
pop.v.i global.border
pushi.e 0
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[22]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[23]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.mercy
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pushi.e -5
pushi.e 488
pop.v.i [array]global.flag
call.i scr_tempsave(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]