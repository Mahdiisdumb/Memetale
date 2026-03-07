.localvar 0 arguments

:[0]
push.v self.sn
pushi.e 1
add.i.v
pop.v.v self.sn
push.v self.y
push.v self.x
push.v self.sn
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 986
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 16
add.i.v
push.v self.image_yscale
pushi.e 1
sub.i.v
pushi.e 19
mul.i.v
add.v.v
push.v self.x
push.v self.sn
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 984
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.image_yscale
cmp.v.v LT
bf [end]

:[2]
push.v self.y
pushi.e 1
add.i.v
push.v self.i
pushi.e 19
mul.i.v
add.v.v
push.v self.x
push.v self.sn
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 985
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]