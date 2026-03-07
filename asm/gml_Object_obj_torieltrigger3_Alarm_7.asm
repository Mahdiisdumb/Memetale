.localvar 0 arguments

:[0]
pushi.e 864
conv.i.v
push.v 874.y
push.v 874.x
call.i instance_create(argc=3)
pop.v.v self.tor3
pushi.e 874
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.tor3
conv.v.i
pushenv [4]

:[3]
pushi.e 270
pop.v.i self.direction

:[4]
popenv [3]
pushi.e 212
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.interact
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.conversation

:[end]