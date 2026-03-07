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
push.d 0.334
pop.v.d self.image_speed
pushi.e 1536
pop.v.i self.dsprite
pushi.e 1556
pop.v.i self.usprite
pushi.e 1545
pop.v.i self.lsprite
pushi.e 1548
pop.v.i self.rsprite
pushi.e 1544
pop.v.i self.dtsprite
pushi.e 1558
pop.v.i self.utsprite
pushi.e 1547
pop.v.i self.ltsprite
pushi.e 1549
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.npcdir
pushi.e 0
pop.v.i self.d
push.v self.xstart
pop.v.v self.xhome
push.v self.ystart
pop.v.v self.yhome
pushi.e 0
pop.v.i self.hhspeed
pushi.e 0
pop.v.i self.vhspeed
push.d 0.8
pop.v.d self.scrollspeed

:[end]