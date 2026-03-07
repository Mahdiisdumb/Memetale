.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e 0
pop.v.i self.t
pushi.e 0
pop.v.i self.image_speed
pushi.e 1191
pop.v.i self.dsprite
pushi.e 1200
pop.v.i self.usprite
pushi.e 1196
pop.v.i self.lsprite
pushi.e 1195
pop.v.i self.rsprite
pushi.e 1193
pop.v.i self.dtsprite
pushi.e 1199
pop.v.i self.utsprite
pushi.e 1198
pop.v.i self.ltsprite
pushi.e 1197
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.conversation
pushi.e 180
pop.v.i self.direction
pushglb.v global.plot
pushi.e 8
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 221
pop.v.i global.msc
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
pushi.e 1
pop.v.i self.conversation

:[end]