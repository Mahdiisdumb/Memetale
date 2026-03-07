.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.image_index
push.d 0.08
add.d.v
pop.v.v self.image_index
push.v self.y
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y

:[end]