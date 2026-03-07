.localvar 0 arguments

:[0]
pushi.e 7
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 12
pop.v.i self.conversation
pushi.e 669
pop.v.i global.msc
pushi.e 784
conv.i.v
push.v 188.y
pushi.e 10
add.i.v
push.v 188.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwriter

:[end]