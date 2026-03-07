.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.dsprite
pop.v.v self.sprite_index

:[2]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.rsprite
pop.v.v self.sprite_index

:[4]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.usprite
pop.v.v self.sprite_index

:[6]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.v self.lsprite
pop.v.v self.sprite_index

:[8]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [end]

:[9]
pushi.e 1401
pop.v.i self.sprite_index

:[end]