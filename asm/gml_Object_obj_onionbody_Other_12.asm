.localvar 0 arguments

:[0]
pushi.e 1080
conv.i.v
push.v self.y
push.v self.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ot
pushi.e 4
push.v self.ot
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.ot
conv.v.i
pop.v.i [stacktop]self.on

:[end]