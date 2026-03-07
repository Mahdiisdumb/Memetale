.localvar 0 arguments

:[0]
push.v self.alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.amalgam
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.anim
call.i floor(argc=1)
pushi.e 2250
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [15]

:[5]
push.v 1576.x
pushi.e 122
cmp.i.v LT
bt [7]

:[6]
push.v 1576.x
pushi.e 220
cmp.i.v GT
b [8]

:[7]
push.e 1

:[8]
bf [15]

:[9]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [15]

:[10]
pushi.e 2
pop.v.i self.con
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
push.v 1576.x
pushi.e 160
cmp.i.v LT
bf [12]

:[11]
pushi.e 1
pop.v.i global.facing

:[12]
push.v 1576.x
pushi.e 200
cmp.i.v GT
bf [14]

:[13]
pushi.e 3
pop.v.i global.facing

:[14]
push.s "music/sfx_generate.ogg"@2730
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.tr
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.tr
call.i caster_play(argc=3)
popz.v

:[15]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.amalgam
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.d 3.1
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [24]

:[18]
pushi.e 1
pop.v.i global.interact
push.v 1576.x
pushi.e 160
cmp.i.v LT
bf [20]

:[19]
pushi.e 1
pop.v.i global.facing

:[20]
push.v 1576.x
pushi.e 200
cmp.i.v GT
bf [22]

:[21]
pushi.e 3
pop.v.i global.facing

:[22]
push.v self.alpha
pushi.e 1
cmp.i.v LT
bf [24]

:[23]
push.v self.alpha
push.d 0.1
add.d.v
pop.v.v self.alpha

:[24]
push.v self.con
push.d 4.1
cmp.d.v EQ
bf [26]

:[25]
push.d 0.7
conv.d.v
push.d 0.8
conv.d.v
push.v self.tr
call.i caster_play(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[26]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [29]

:[27]
push.v self.anim
push.d 0.5
add.d.v
pop.v.v self.anim
push.v self.anim
pushi.e 8
cmp.i.v GTE
bf [29]

:[28]
pushi.e 8
pop.v.i self.anim
pushi.e 0
pop.v.i self.image_speed
pushi.e 5
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[29]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [31]

:[30]
push.v self.tr
call.i caster_free(argc=1)
popz.v
pushi.e 84
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

:[31]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.mercy
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 0
pop.v.i self.myinteract
push.i 16711680
pop.v.i self.image_blend
pushi.e 2213
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pushi.e -5
pushi.e 482
pop.v.i [array]global.flag
push.d 0.1
pop.v.d self.image_speed
call.i scr_tempsave(argc=0)
popz.v
pushi.e 9
pop.v.i self.con
pushi.e 0
pop.v.i self.amalgam
pushi.e 0
pop.v.i self.alpha
pushi.e 170
pop.v.i self.x
pushi.e 138
pop.v.i self.y

:[33]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [35]

:[34]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [end]

:[37]
pushi.e 0
pop.v.i global.interact
pushi.e 2
pushi.e -5
pushi.e 482
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]