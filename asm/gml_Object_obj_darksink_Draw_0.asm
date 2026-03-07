.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.dont
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.dont
pushi.e 1566
pushenv [6]

:[5]
push.v self.water
call.i caster_stop(argc=1)
popz.v

:[6]
popenv [5]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i self.acon

:[7]
push.v self.acon
pushi.e 0
cmp.i.v GT
bf [42]

:[8]
pushi.e 0
pop.v.i self.wcon
push.v self.acon
pushi.e 1
cmp.i.v EQ
bf [12]

:[9]
push.v self.aanim
pushi.e 14
cmp.i.v LT
bf [11]

:[10]
push.v self.aanim
push.d 0.1
add.d.v
pop.v.v self.aanim
b [12]

:[11]
pushi.e 14
pop.v.i self.aanim
pushi.e 2
pop.v.i self.acon
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.acon
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
push.s "music/sfx_generate.ogg"@2730
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.tr
push.d 0.75
conv.d.v
push.d 0.9
conv.d.v
push.v self.tr
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.aanim
pushi.e 4
pop.v.i self.acon
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.acon
pushi.e 4
cmp.i.v EQ
bf [17]

:[15]
push.v self.aanim
push.d 0.334
add.d.v
pop.v.v self.aanim
push.v self.aanim
pushi.e 7
cmp.i.v GTE
bf [17]

:[16]
push.v self.aanim
pushi.e 2
sub.i.v
pop.v.v self.aanim

:[17]
push.v self.acon
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
push.v self.tr
call.i caster_free(argc=1)
popz.v
pushi.e 85
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
pushi.e 6
pop.v.i self.acon
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.acon
pushi.e 7
cmp.i.v LT
bf [21]

:[20]
pushi.e 1
pop.v.i global.interact

:[21]
push.v self.acon
pushi.e 7
cmp.i.v EQ
bf [31]

:[22]
pushi.e 1576
pushenv [24]

:[23]
pushi.e 0
pop.v.i self.uncan

:[24]
popenv [23]
pushi.e 0
pop.v.i global.mercy
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 1566
pushenv [26]

:[25]
pushi.e 0
pop.v.i self.wcon

:[26]
popenv [25]
pushi.e 0
pop.v.i self.myinteract
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 10
pushi.e -5
pushi.e 486
pop.v.i [array]global.flag
pushi.e 3
pushi.e -5
pushi.e 487
pop.v.i [array]global.flag
push.v 1576.x
pushi.e 110
cmp.i.v LT
bf [28]

:[27]
pushi.e 2
pushi.e -5
pushi.e 487
pop.v.i [array]global.flag

:[28]
push.v 1576.x
pushi.e 75
cmp.i.v LT
bf [30]

:[29]
pushi.e 1
pushi.e -5
pushi.e 487
pop.v.i [array]global.flag

:[30]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 481
pop.v.i [array]global.flag
pushi.e -10
pop.v.i self.acon

:[31]
push.v self.acon
pushi.e 1
cmp.i.v EQ
bt [33]

:[32]
push.v self.acon
pushi.e 2
cmp.i.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
push.v self.y
push.v self.x
pushi.e 6
add.i.v
push.v self.aanim
call.i floor(argc=1)
pushi.e 2227
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[36]
push.v self.acon
pushi.e 4
cmp.i.v EQ
bt [39]

:[37]
push.v self.acon
pushi.e 5
cmp.i.v EQ
bt [39]

:[38]
push.v self.acon
pushi.e 6
cmp.i.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [42]

:[41]
push.v self.y
push.v self.x
pushi.e 6
add.i.v
push.v self.aanim
call.i floor(argc=1)
pushi.e 2228
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[42]
push.v self.wcon
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.v self.anim
pushi.e 1
add.i.v
pop.v.v self.anim
push.v self.y
push.v self.x
pushi.e 10
add.i.v
push.v self.anim
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2226
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[44]
push.v self.how_bad_me_key
pushi.e 1
cmp.i.v EQ
bf [end]

:[45]
push.v self.kanim
push.d 0.1
add.d.v
pop.v.v self.kanim
pushi.e 1
conv.i.v
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 13
add.i.v
push.v self.kanim
call.i floor(argc=1)
pushi.e 2213
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]