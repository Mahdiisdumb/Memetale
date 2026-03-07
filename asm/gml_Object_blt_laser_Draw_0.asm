.localvar 0 arguments

:[0]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.twdsXspeed
push.v self.owngravity
push.v self.gravityincrement
mul.v.v
add.v.v
pop.v.v self.twdsXspeed
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.twdsY
push.v self.twdsX
push.v self.y
push.v self.x
call.i collision_line(argc=7)
conv.v.b
bf [2]

:[1]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[2]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.twdsY
push.v self.twdsYspeed
add.v.v
push.v self.twdsX
push.v self.twdsXspeed
add.v.v
push.v self.y
push.v self.x
call.i collision_line(argc=7)
conv.v.b
bf [4]

:[3]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[4]
pushi.e 0
conv.i.v
push.v self.twdsY
push.v self.twdsYspeed
add.v.v
push.v self.twdsX
push.v self.twdsXspeed
add.v.v
push.v self.twdsY
push.v self.twdsX
push.v self.y
push.v self.x
call.i draw_triangle(argc=7)
popz.v
push.v self.twdsX
push.v self.twdsXspeed
add.v.v
pop.v.v self.twdsX
push.v self.twdsY
push.v self.twdsYspeed
add.v.v
pop.v.v self.twdsY

:[end]