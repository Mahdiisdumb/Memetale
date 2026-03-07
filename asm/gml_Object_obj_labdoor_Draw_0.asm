.localvar 0 arguments

:[0]
push.v self.s_buffer
pushi.e 1
add.i.v
pop.v.v self.s_buffer
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 40
add.i.v
push.v self.y
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.open
pushi.e 1
cmp.i.v EQ
bf [11]

:[1]
push.v self.s1
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[2]
push.v self.s1
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
push.v self.s2
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]

:[7]
push.v self.ox
pushi.e 20
cmp.i.v LT
bf [9]

:[8]
push.v self.ox
pushi.e 2
add.i.v
pop.v.v self.ox
pushi.e 0
pop.v.i self.c_sound
pushi.e 0
pop.v.i self.s_sound

:[9]
push.v self.ox
pushi.e 20
cmp.i.v GTE
bf [11]

:[10]
pushi.e 30
pop.v.i self.ox

:[11]
push.v self.open
pushi.e 0
cmp.i.v EQ
bf [19]

:[12]
push.v self.s1
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.s1
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.s2

:[14]
push.v self.ox
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.v self.ox
pushi.e 2
sub.i.v
pop.v.v self.ox
pushi.e 0
pop.v.i self.o_sound

:[16]
push.v self.ox
pushi.e 0
cmp.i.v LT
bf [19]

:[17]
pushi.e 0
pop.v.i self.ox
push.v self.s_sound
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 124
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.s_sound

:[19]
push.v self.anim
pushi.e 1
add.i.v
pop.v.v self.anim
push.v self.ox
pushi.e 20
cmp.i.v LT
bf [36]

:[20]
push.v self.y
push.v self.x
pushi.e 60
conv.i.v
pushi.e 20
push.v self.ox
sub.v.i
pushi.e 0
conv.i.v
push.v self.ox
pushi.e 0
conv.i.v
pushi.e 2201
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.y
push.v self.x
pushi.e 20
add.i.v
push.v self.ox
add.v.v
pushi.e 60
conv.i.v
pushi.e 20
push.v self.ox
sub.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2202
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [29]

:[21]
push.v self.y
push.v self.x
pushi.e 60
conv.i.v
pushi.e 20
push.v self.ox
sub.v.i
pushi.e 0
conv.i.v
push.v self.ox
pushi.e 0
conv.i.v
pushi.e 2207
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v self.y
pushi.e 12
add.i.v
push.v self.x
pushi.e 12
conv.i.v
pushi.e 19
push.v self.ox
sub.v.i
pushi.e 0
conv.i.v
push.v self.ox
push.v self.anim
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2208
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[23]
push.v self.yel
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.v self.y
pushi.e 25
add.i.v
push.v self.x
pushi.e 12
conv.i.v
pushi.e 19
push.v self.ox
sub.v.i
pushi.e 0
conv.i.v
push.v self.ox
push.v self.anim
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2209
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[25]
push.v self.y
push.v self.x
pushi.e 20
add.i.v
push.v self.ox
add.v.v
pushi.e 60
conv.i.v
pushi.e 20
push.v self.ox
sub.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2212
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.blu
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.y
pushi.e 13
add.i.v
push.v self.x
pushi.e 23
add.i.v
push.v self.ox
add.v.v
pushi.e 10
conv.i.v
pushi.e 17
push.v self.ox
sub.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.anim
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2210
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[27]
push.v self.gre
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v self.y
pushi.e 26
add.i.v
push.v self.x
pushi.e 23
add.i.v
push.v self.ox
add.v.v
pushi.e 10
conv.i.v
pushi.e 17
push.v self.ox
sub.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.anim
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2211
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[29]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [36]

:[30]
push.v self.y
push.v self.x
pushi.e 37
conv.i.v
pushi.e 20
push.v self.ox
sub.v.i
pushi.e 0
conv.i.v
push.v self.ox
pushi.e 0
conv.i.v
pushi.e 2203
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.y
push.v self.x
pushi.e 20
add.i.v
push.v self.ox
add.v.v
pushi.e 37
conv.i.v
pushi.e 20
push.v self.ox
sub.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2204
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [36]

:[31]
pushi.e 13
push.v self.ox
sub.v.i
pop.v.v self.w
push.v self.w
pushi.e 0
cmp.i.v LT
bf [33]

:[32]
pushi.e 0
pop.v.i self.w

:[33]
push.v self.y
pushi.e 18
add.i.v
push.v self.x
pushi.e 7
add.i.v
pushi.e 15
conv.i.v
push.v self.w
pushi.e 0
conv.i.v
push.v self.ox
push.v self.anim
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2206
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
pushi.e 15
push.v self.ox
sub.v.i
pop.v.v self.w
push.v self.w
pushi.e 0
cmp.i.v LT
bf [35]

:[34]
pushi.e 0
pop.v.i self.w

:[35]
push.v self.y
pushi.e 18
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.v self.ox
add.v.v
pushi.e 15
conv.i.v
push.v self.w
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.anim
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2205
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[36]
push.v self.y
pushi.e 3
sub.i.v
push.v self.x
pushi.e 4
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2200
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[37]
push.v 1576.bbox_top
push.v 1576.x
pushi.e 10
add.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i point_distance(argc=4)
pushi.e 50
cmp.i.v GT
bf [41]

:[38]
push.v self.open
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 121
conv.i.v
call.i caster_play(argc=3)
popz.v

:[40]
pushi.e 0
pop.v.i self.open

:[41]
push.v 1576.bbox_top
push.v 1576.x
pushi.e 10
add.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i point_distance(argc=4)
pushi.e 40
cmp.i.v LT
bf [43]

:[42]
push.v self.shouldopen
pushi.e 1
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [end]

:[45]
push.v self.open
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 122
conv.i.v
call.i caster_play(argc=3)
popz.v

:[47]
pushi.e 1
pop.v.i self.open

:[end]