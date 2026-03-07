.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 7
cmp.i.v GT
bt [2]

:[1]
pushglb.v global.plot
pushi.e 6
cmp.i.v LT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.facing
pushi.e 216
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
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
pop.v.i global.interact

:[end]