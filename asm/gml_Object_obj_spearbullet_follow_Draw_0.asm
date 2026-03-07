.localvar 0 arguments

:[0]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
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
push.v self.rotspeed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.direction
pushi.e 25
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xoff
push.v self.direction
pushi.e 25
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yoff
push.v self.y
push.v self.yoff
add.v.v
push.v self.x
push.v self.xoff
add.v.v
push.v self.y
push.v self.yoff
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
push.v self.xoff
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i draw_line(argc=4)
popz.v

:[2]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]