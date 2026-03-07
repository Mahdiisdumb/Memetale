.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
push.d 0.5
pop.v.d self.xxspeed
push.d 0.25
pop.v.d self.yyspeed
push.d 0.25
pop.v.d self.image_alpha
pushi.e 2245
pop.v.i self.sprite_index
pushbltn.v self.room
pushi.e 260
cmp.i.v EQ
bf [2]

:[1]
push.d 0.6
pop.v.d self.image_alpha

:[2]
pushbltn.v self.room
pushi.e 258
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.image_alpha

:[4]
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 0
pop.v.i self.image_alpha

:[end]