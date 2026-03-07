.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.z_index
pushi.e 0
pop.v.i self.x_index
pushi.e 0
pop.v.i self.c_index
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [31]

:[1]
pushi.e 0
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 2
pop.v.i self.z_index
b [5]

:[3]
push.v self.z_index
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3
pop.v.i self.z_index

:[5]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [9]

:[6]
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.s_snare
call.i caster_play(argc=3)
popz.v

:[8]
pushi.e 1
pop.v.i self.z_index

:[9]
pushi.e 1
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 2
pop.v.i self.x_index
b [13]

:[11]
push.v self.x_index
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 3
pop.v.i self.x_index

:[13]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [17]

:[14]
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.s_kick
call.i caster_play(argc=3)
popz.v

:[16]
pushi.e 1
pop.v.i self.x_index

:[17]
pushi.e 2
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [19]

:[18]
pushi.e 2
pop.v.i self.c_index
b [21]

:[19]
push.v self.c_index
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 3
pop.v.i self.c_index

:[21]
pushi.e 2
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [25]

:[22]
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.s_cymbal
call.i caster_play(argc=3)
popz.v

:[24]
pushi.e 1
pop.v.i self.c_index

:[25]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [28]

:[26]
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.s_cuica
call.i caster_play(argc=3)
popz.v

:[28]
pushi.e 69
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [31]

:[29]
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.s_cuica2
call.i caster_play(argc=3)
popz.v

:[31]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 80
conv.i.v
push.v self.z_index
pushi.e 918
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 140
conv.i.v
push.v self.x_index
pushi.e 919
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 200
conv.i.v
push.v self.c_index
pushi.e 920
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
b [34]

:[33]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 16
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 16
add.i.v
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 14
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 16
add.i.v
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 16
add.i.v
call.i draw_circle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 17
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 16
add.i.v
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 15
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 16
add.i.v
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 16
add.i.v
call.i draw_circle(argc=4)
popz.v

:[34]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[35]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [37]

:[36]
pushi.e 1
conv.i.v
pushi.e 300
conv.i.v
push.v self.borderr
push.v self.i
add.v.v
push.v self.borderu
push.v self.i
sub.v.v
push.v self.borderl
push.v self.i
sub.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [35]

:[37]
push.v 1575.left
conv.v.b
bf [39]

:[38]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[39]
push.v 1575.right
conv.v.b
bf [41]

:[40]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[41]
push.v 1575.down
conv.v.b
bf [43]

:[42]
push.v self.y
pushi.e 3
add.i.v
pop.v.v self.y

:[43]
push.v 1575.up
conv.v.b
bf [45]

:[44]
push.v self.y
pushi.e 3
sub.i.v
pop.v.v self.y

:[45]
push.v self.x
push.v self.borderl
cmp.v.v LTE
bf [47]

:[46]
push.v self.borderl
pop.v.v self.x

:[47]
push.v self.x
push.v self.borderr
pushi.e 32
sub.i.v
cmp.v.v GTE
bf [49]

:[48]
push.v self.borderr
pushi.e 32
sub.i.v
pop.v.v self.x

:[49]
push.v self.y
push.v self.borderu
cmp.v.v LTE
bf [51]

:[50]
push.v self.borderu
pop.v.v self.y

:[51]
push.v self.y
pushi.e 240
cmp.i.v GTE
bf [end]

:[52]
pushi.e 1
pop.v.i global.to_joyconfig
pushi.e 288
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]