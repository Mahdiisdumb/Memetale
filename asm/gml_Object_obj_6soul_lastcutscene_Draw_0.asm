.localvar 0 arguments

:[0]
push.v self.counter
push.v self.sinerspeed
add.v.v
pop.v.v self.counter
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.radius
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.radius
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.sinerspeed
push.d 0.25
add.d.v
pop.v.v self.sinerspeed

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [end]

:[4]
push.v self.y
push.v self.counter
push.v self.i
pushi.e 6
conv.i.d
div.d.v
pushi.e 360
mul.i.v
add.v.v
push.v self.radius
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.counter
push.v self.i
pushi.e 6
conv.i.d
div.d.v
pushi.e 360
mul.i.v
add.v.v
push.v self.radius
call.i lengthdir_x(argc=2)
add.v.v
push.v self.i
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[end]