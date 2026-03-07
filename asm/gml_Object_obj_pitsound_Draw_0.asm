.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
conv.i.v
pushi.e 60
conv.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
pushi.e 1005
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]