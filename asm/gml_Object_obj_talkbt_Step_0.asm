.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_index
pushi.e -5
pushi.e 0
push.v [array]global.bmenucoord
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.image_index

:[4]
pushglb.v global.bmenuno
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.x
pushi.e 8
add.i.v
pop.v.v 744.x
push.v self.y
pushi.e 14
add.i.v
pop.v.v 744.y

:[6]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
push.v self.spec_x
pushi.e 1
add.i.v
pop.v.v self.spec_x
pushi.e 255
conv.i.v
pushi.e 160
conv.i.v
push.v self.spec_x
pushi.e 12
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.image_blend

:[end]