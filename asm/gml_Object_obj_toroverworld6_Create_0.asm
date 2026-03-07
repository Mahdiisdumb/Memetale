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
pushi.e 0
pop.v.i self.direction
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 13
conv.i.v
call.i path_start(argc=4)
popz.v

:[end]