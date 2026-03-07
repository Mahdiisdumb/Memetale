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
push.d 7.5
pop.v.d global.plot
pushi.e 0
pop.v.i self.image_speed
pushi.e 1201
pop.v.i self.dsprite
pushi.e 1205
pop.v.i self.usprite
pushi.e 1196
pop.v.i self.lsprite
pushi.e 1202
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
pop.v.i self.direction
pushi.e 0
pop.v.i 1576.visible
push.v self.y
pushi.e 28
add.i.v
pop.v.v 1576.y
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 14
conv.i.v
call.i path_start(argc=4)
popz.v
pushi.e 1
pop.v.i global.phasing
pushi.e 0
pop.v.i 912.solid
pushi.e 1576
pushenv [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 14
conv.i.v
call.i path_start(argc=4)
popz.v

:[2]
popenv [1]
pushi.e 6
pop.v.i global.interact
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i self.phone

:[end]