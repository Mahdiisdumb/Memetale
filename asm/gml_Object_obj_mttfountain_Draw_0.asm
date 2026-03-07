.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
pushi.e 14
sub.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.pudd
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 59
add.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.pudd
conv.v.i
pop.v.v [stacktop]self.y
push.v self.y
push.v self.x
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2085
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.siner
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.siner
call.i cos(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2086
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]