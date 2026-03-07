.localvar 0 arguments

:[0]
pushi.e 1185
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1185.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[2]
push.v self.powered
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
b [5]

:[4]
pushi.e 0
pop.v.i self.siner

:[5]
push.v self.image_xscale
pushi.e 0
cmp.i.v GTE
bf [end]

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
push.v self.image_xscale
cmp.v.v LT
bf [end]

:[8]
push.v self.y
push.v self.x
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
pushi.e 999
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[end]