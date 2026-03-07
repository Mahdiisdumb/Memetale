.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -2
conv.i.v
push.v self.x
pushi.e 4
add.i.v
push.v self.y
pushi.e 1
sub.i.v
push.v self.x
pushi.e 4
add.i.v
call.i draw_line(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -2
conv.i.v
push.v self.x
pushi.e 5
add.i.v
push.v self.y
pushi.e 1
sub.i.v
push.v self.x
pushi.e 5
add.i.v
call.i draw_line(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -2
conv.i.v
push.v self.x
pushi.e 6
add.i.v
push.v self.y
pushi.e 1
sub.i.v
push.v self.x
pushi.e 6
add.i.v
call.i draw_line(argc=4)
popz.v
push.v 1576.x
push.v self.x
pushi.e 50
sub.i.v
cmp.v.v GT
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -3
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[5]
push.v self.y
pushi.e -30
cmp.i.v LT
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]