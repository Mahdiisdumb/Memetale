.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.xadd
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.yadd
push.v self.y
push.v self.height
add.v.v
push.v self.yadd
add.v.v
push.v self.x
pushi.e 4
add.i.v
push.v self.xadd
add.v.v
push.v 664.y
push.v 664.sprite_height
add.v.v
pushi.e 8
sub.i.v
push.v self.x
push.v self.xadd
add.v.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
push.v self.height
add.v.v
push.v self.yadd
add.v.v
push.v self.x
pushi.e 4
add.i.v
push.v self.xadd
add.v.v
push.v 664.y
push.v 664.sprite_height
add.v.v
pushi.e 8
sub.i.v
push.v self.x
push.v self.xadd
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [2]

:[1]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
push.v self.y
push.v self.height
add.v.v
push.v self.yadd
add.v.v
push.v self.x
push.v self.xadd
add.v.v
pushi.e 5
sub.i.v
pushi.e 0
conv.i.v
pushi.e 138
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]