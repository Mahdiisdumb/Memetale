.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 202
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facechoice
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.conversation

:[end]