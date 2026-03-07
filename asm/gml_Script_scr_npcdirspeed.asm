.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [21]

:[1]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.vspeed
push.v self.hspeed
call.i abs(argc=1)
cmp.v.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i self.facing
push.v self.dsprite
pop.v.v self.sprite_index

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.hspeed
push.v self.vspeed
call.i abs(argc=1)
cmp.v.v GT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.facing
push.v self.rsprite
pop.v.v self.sprite_index

:[11]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
push.v self.vspeed
call.i abs(argc=1)
push.v self.hspeed
call.i abs(argc=1)
cmp.v.v GT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 2
pop.v.i self.facing
push.v self.usprite
pop.v.v self.sprite_index

:[16]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [18]

:[17]
push.v self.hspeed
call.i abs(argc=1)
push.v self.vspeed
call.i abs(argc=1)
cmp.v.v GT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 3
pop.v.i self.facing
push.v self.lsprite
pop.v.v self.sprite_index

:[21]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [end]

:[22]
push.v self.facing
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v self.dtsprite
pop.v.v self.sprite_index

:[24]
push.v self.facing
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v self.rtsprite
pop.v.v self.sprite_index

:[26]
push.v self.facing
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
push.v self.utsprite
pop.v.v self.sprite_index

:[28]
push.v self.facing
pushi.e 3
cmp.i.v EQ
bf [end]

:[29]
push.v self.ltsprite
pop.v.v self.sprite_index

:[end]