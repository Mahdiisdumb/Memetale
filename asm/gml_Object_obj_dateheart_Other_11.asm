.localvar 0 arguments

:[0]
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v 170.y
pushi.e 22
add.i.v
push.v 170.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 0
pop.v.i self.movement
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 0
pop.v.i self.canpress

:[end]