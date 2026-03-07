.localvar 0 arguments

:[0]
push.v self.d
push.d 0.05
add.d.v
pop.v.v self.d
push.v 1575.right
conv.v.b
bf [2]

:[1]
push.v self.h
pushi.e 1
add.i.v
pop.v.v self.h

:[2]
pushi.e 255
conv.i.v
pushi.e 100
push.v self.d
call.i sin(argc=1)
pushi.e 100
mul.i.v
add.v.i
push.v self.h
call.i make_color_hsv(argc=3)
pop.v.v self.g
push.v self.g
pop.v.v self.background_color

:[end]