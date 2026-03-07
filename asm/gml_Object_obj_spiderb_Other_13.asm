.localvar 0 arguments

:[0]
pushi.e 33
pop.v.i global.typer
pushi.e 1
pop.v.i self.blcontype
pushi.e 189
conv.i.v
push.v self.ystart
pushi.e 10
sub.i.v
push.v self.xstart
pushi.e 110
add.i.v
pushi.e 60
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
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
push.v self.blconwd
push.v self.blcon
conv.v.i
pop.v.v [stacktop]self.parent

:[end]