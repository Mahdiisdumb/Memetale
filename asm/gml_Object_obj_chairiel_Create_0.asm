.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.chair
pushglb.v global.plot
pushi.e 20
cmp.i.v GT
bt [2]

:[1]
pushglb.v global.plot
pushi.e 19
cmp.i.v LT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.chair

:[5]
push.v self.chair
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1206
pop.v.i self.dsprite
pushi.e 1206
pop.v.i self.usprite
pushi.e 1206
pop.v.i self.lsprite
pushi.e 1206
pop.v.i self.rsprite
pushi.e 1206
pop.v.i self.dtsprite
pushi.e 1206
pop.v.i self.utsprite
pushi.e 1206
pop.v.i self.ltsprite
pushi.e 1206
pop.v.i self.rtsprite
b [8]

:[7]
pushi.e 1209
pop.v.i self.dsprite
pushi.e 1209
pop.v.i self.usprite
pushi.e 1209
pop.v.i self.lsprite
pushi.e 1209
pop.v.i self.rsprite
pushi.e 1209
pop.v.i self.dtsprite
pushi.e 1209
pop.v.i self.utsprite
pushi.e 1209
pop.v.i self.ltsprite
pushi.e 1209
pop.v.i self.rtsprite
pushi.e 1209
pop.v.i self.sprite_index

:[8]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.facing
pushi.e 180
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushbltn.v self.room
pushi.e 221
cmp.i.v EQ
bf [end]

:[9]
pushi.e 1994
pop.v.i self.dsprite
pushi.e 1994
pop.v.i self.usprite
pushi.e 1994
pop.v.i self.lsprite
pushi.e 1994
pop.v.i self.rsprite
pushi.e 1994
pop.v.i self.dtsprite
pushi.e 1994
pop.v.i self.utsprite
pushi.e 1994
pop.v.i self.ltsprite
pushi.e 1994
pop.v.i self.rtsprite
pushi.e 1994
pop.v.i self.sprite_index
pushi.e 9
pop.v.i self.chair

:[end]