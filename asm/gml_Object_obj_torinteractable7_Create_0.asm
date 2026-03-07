.localvar 0 arguments

:[0]
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
pushi.e 1
pop.v.i self.facing
pushi.e 180
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.y
pushi.e 2526
pop.v.i self.dsprite
pushi.e 2528
pop.v.i self.usprite
pushi.e 2533
pop.v.i self.lsprite
pushi.e 2530
pop.v.i self.rsprite
pushi.e 2527
pop.v.i self.dtsprite
pushi.e 2529
pop.v.i self.utsprite
pushi.e 2534
pop.v.i self.ltsprite
pushi.e 2531
pop.v.i self.rtsprite
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.curf
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.curf
pushi.e 0
cmp.i.v GT
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]