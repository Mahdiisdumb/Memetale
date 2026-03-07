.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.on
push.d 0.25
pop.v.d self.image_speed
pushi.e 1953
pop.v.i self.sprite_index
pushbltn.v self.room
pushi.e 149
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 374
pop.v.i [array]global.flag

:[2]
pushbltn.v self.room
pushi.e 151
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pushi.e -5
pushi.e 375
pop.v.i [array]global.flag

:[4]
pushbltn.v self.room
pushi.e 208
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1
pushi.e -5
pushi.e 419
pop.v.i [array]global.flag
call.i scr_tempsave(argc=0)
popz.v

:[end]