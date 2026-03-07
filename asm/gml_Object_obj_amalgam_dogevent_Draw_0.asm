.localvar 0 arguments

:[0]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [4]

:[1]
pushi.e 2234
pop.v.i 1551.sprite_index
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 1560
pushenv [3]

:[2]
pushi.e 3
conv.i.v
push.d 0.5
conv.d.v
push.v self.fansfx
call.i caster_loop(argc=3)
popz.v

:[3]
popenv [2]
pushi.e 51
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [8]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1560
pushenv [7]

:[6]
push.v self.image_alpha
push.d 0.01
sub.d.v
pop.v.v self.image_alpha

:[7]
popenv [6]

:[8]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.con

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.s "music/sfx_generate.ogg"@2730
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.tr
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
push.v self.tr
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing
pushi.e 1
pop.v.i self.drawball
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 10
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.con

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e 4
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [17]

:[15]
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y
push.v self.y
pushi.e 149
cmp.i.v GTE
bf [17]

:[16]
pushi.e 150
pop.v.i self.y
push.d 5.9
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
push.d 6.9
cmp.d.v EQ
bf [19]

:[18]
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
push.v self.tr
call.i caster_play(argc=3)
popz.v
pushi.e 7
pop.v.i self.con

:[19]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [22]

:[20]
push.v self.banim
push.d 0.334
add.d.v
pop.v.v self.banim
push.v self.banim
pushi.e 5
cmp.i.v GTE
bf [22]

:[21]
pushi.e 5
pop.v.i self.banim
pushi.e 8
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[22]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [24]

:[23]
push.s "music/sfx_yowl.ogg"@2731
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.yl
pushi.e 0
pop.v.i global.interact
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 20
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 10
pop.v.i self.con

:[24]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [27]

:[25]
push.v self.x
push.v 1576.x
pushi.e 25
sub.i.v
cmp.v.v GT
bf [27]

:[26]
pushi.e 11
pop.v.i self.con

:[27]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [29]

:[28]
push.v self.tr
call.i caster_free(argc=1)
popz.v
push.v self.yl
call.i caster_free(argc=1)
popz.v
pushi.e 86
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
pushi.e 12
pop.v.i self.con
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[29]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [33]

:[30]
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
pushi.e 1576
pushenv [32]

:[31]
pushi.e 0
pop.v.i self.uncan

:[32]
popenv [31]
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pushi.e -5
pushi.e 490
pop.v.i [array]global.flag
call.i scr_tempsave(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[33]
push.v self.drawball
pushi.e 1
cmp.i.v EQ
bf [end]

:[34]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.size
push.v self.size
push.v self.y
push.v self.x
push.v self.banim
call.i floor(argc=1)
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]