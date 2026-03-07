.localvar 0 arguments

:[0]
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.checkx
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.checky
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.thistile
pop.v.v self.mytile
push.v self.mytile
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.facing

:[4]
push.v self.moving
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 3
pop.v.i global.facing

:[6]
pushi.e 0
pop.v.i self.moving
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i 1576.visible
pushi.e 0
pop.v.i 1576.phasing
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.mytile
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i self.moving

:[9]
push.v self.mytile
pushi.e 3
cmp.i.v EQ
bf [30]

:[10]
push.v self.orange
pushi.e 0
cmp.i.v NEQ
bf [14]

:[11]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_speed
push.v self.tileid
conv.v.i
pushenv [13]

:[12]
pushi.e 109
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.af
pushi.e 1848
push.v self.af
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
push.v self.af
conv.v.i
pop.v.v [stacktop]self.depth

:[13]
popenv [12]
push.v self.yblend
pop.v.v self.image_blend

:[14]
pushi.e 0
pop.v.i self.orange
pushi.e 0
pop.v.i self.mytile
push.v self.tileid
pop.v.v self.tileid2
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.x
pushi.e 30
add.i.v
pop.v.v self.checkx
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.checky

:[16]
push.v self.moving
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.checkx
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.checky

:[18]
push.v self.moving
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
push.v self.x
pushi.e 10
sub.i.v
pop.v.v self.checkx
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.checky

:[20]
push.v self.moving
pushi.e 4
cmp.i.v EQ
bf [22]

:[21]
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.checkx
push.v self.y
pushi.e 35
add.i.v
pop.v.v self.checky

:[22]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.thistile
pop.v.v self.mytile2
push.v self.mytile2
pushi.e 0
cmp.i.v NEQ
bf [24]

:[23]
push.v self.mytile2
pushi.e 2
cmp.i.v NEQ
b [25]

:[24]
push.e 0

:[25]
bf [29]

:[26]
push.v self.tileid2
conv.v.i
pushenv [28]

:[27]
pushi.e 109
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.af
pushi.e 1840
push.v self.af
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 2
sub.i.v
push.v self.af
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e -90
push.v 1214.moving
pushi.e 90
mul.i.v
add.v.i
push.v self.af
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e -90
push.v 1214.moving
pushi.e 90
mul.i.v
add.v.i
push.v self.af
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 2
push.v self.af
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.v 1214.speed
pushi.e 3
conv.i.d
div.d.v
push.v self.af
conv.v.i
pop.v.v [stacktop]self.speed

:[28]
popenv [27]
push.v self.x
pop.v.v self.prevx
push.v self.y
pop.v.v self.prevy
b [30]

:[29]
pushi.e 0
pop.v.i self.moving

:[30]
push.v self.mytile
pushi.e 4
cmp.i.v EQ
bf [36]

:[31]
push.v self.electrocute
pushi.e 0
cmp.i.v EQ
bf [36]

:[32]
pushi.e 24
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.tileid
conv.v.i
pushenv [35]

:[33]
pushi.e 108
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ga
pushi.e 1842
push.v self.ga
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.ga
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.sprite_index
pushi.e 1845
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1843
push.v self.ga
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[35]
popenv [33]
pushi.e 1
pop.v.i self.electrocute
pushi.e 10
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[36]
push.v self.mytile
pushi.e 5
cmp.i.v EQ
bf [42]

:[37]
pushi.e 0
pop.v.i self.moving
push.v self.orange
pushi.e 1
cmp.i.v NEQ
bf [41]

:[38]
push.v self.oblend
pop.v.v self.image_blend
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.tileid
conv.v.i
pushenv [40]

:[39]
pushi.e 109
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.af
pushi.e 1848
push.v self.af
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
push.v self.af
conv.v.i
pop.v.v [stacktop]self.depth

:[40]
popenv [39]

:[41]
pushi.e 1
pop.v.i self.orange

:[42]
push.v self.mytile
pushi.e 6
cmp.i.v EQ
bf [56]

:[43]
push.v self.orange
pushi.e 1
cmp.i.v EQ
bf [55]

:[44]
push.v self.electrocute
pushi.e 0
cmp.i.v EQ
bf [54]

:[45]
push.v self.pir
pushi.e 1
add.i.v
pop.v.v self.pir
pushi.e 0
pop.v.i self.dogchance
push.v self.pir
pushi.e 8
cmp.i.v GT
bf [47]

:[46]
pushi.e 5
conv.i.v
call.i random(argc=1)
pop.v.v self.dogchance

:[47]
push.v self.dog
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 0
pop.v.i self.dogchance

:[49]
push.v self.tileid
conv.v.i
pushenv [53]

:[50]
pushi.e 108
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ga
pushi.e 1835
push.v self.ga
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v 1214.dogchance
pushi.e 4
cmp.i.v GT
bf [52]

:[51]
pushi.e 1836
push.v self.ga
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i 1214.dog

:[52]
pushi.e 1
push.v self.ga
conv.v.i
pop.v.i [stacktop]self.image_speed

:[53]
popenv [50]
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.electrocute
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[54]
b [56]

:[55]
pushi.e 0
pop.v.i self.moving

:[56]
push.v self.mytile
pushi.e 7
cmp.i.v EQ
bf [end]

:[57]
push.v self.tileid
conv.v.i
pushenv [59]

:[58]
pushi.e 109
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.af
pushi.e 1848
push.v self.af
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
push.v self.af
conv.v.i
pop.v.v [stacktop]self.depth

:[59]
popenv [58]
pushi.e 1
pushi.e -5
pushi.e 289
pop.v.i [array]global.flag
pushi.e 116
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.moving

:[end]