.localvar 0 arguments

:[0]
push.v self.direction
pop.v.v self.rot
push.v self.rot
call.i degtorad(argc=1)
pop.v.v self.deg
push.v self.x
push.v self.r
push.v self.deg
call.i cos(argc=1)
mul.v.v
add.v.v
pop.v.v self.x1
push.v self.y
push.v self.r
push.v self.deg
call.i sin(argc=1)
mul.v.v
sub.v.v
pop.v.v self.y1
push.v self.x
pop.v.v self.x2
push.v self.y
pop.v.v self.y2
call.i scr_depth(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.shadowy
push.v self.goaly
cmp.v.v LT
bf [2]

:[1]
push.v self.shadowy
push.v self.shadowspeed
add.v.v
pop.v.v self.shadowy

:[2]
pushi.e 0
conv.i.v
push.v self.shadowy
pushi.e 14
add.i.v
push.v self.x2
push.v self.shadowy
pushi.e 8
add.i.v
push.v self.x1
call.i draw_rectangle(argc=5)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.direction
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
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y2
push.v self.x2
push.v self.y1
push.v self.x1
call.i draw_line(argc=4)
popz.v
push.v self.y1
push.v self.goaly
pushi.e 2
sub.i.v
cmp.v.v GT
bf [5]

:[3]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.shadowy
pushi.e 14
add.i.v
push.v self.x2
push.v self.shadowy
pushi.e 8
add.i.v
push.v self.x1
call.i collision_rectangle(argc=7)
conv.v.b
bf [5]

:[4]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
push.v self.y1
push.v self.goaly
pushi.e 9
add.i.v
cmp.v.v GTE
bf [7]

:[6]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [10]

:[8]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [10]

:[9]
pushi.e 2
pop.v.i self.active

:[10]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[end]