.localvar 0 arguments

:[0]
push.v self.subject
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.subject
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
push.v self.subject
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y
pushi.e 1
pop.v.i self.image_xscale
push.v self.subject
conv.v.i
push.v [stacktop]self.depth
pushi.e 100
add.i.v
pop.v.v self.depth

:[end]