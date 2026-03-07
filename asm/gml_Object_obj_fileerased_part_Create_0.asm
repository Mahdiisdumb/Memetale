.localvar 0 arguments

:[0]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushi.e 2372
pop.v.i self.sprite_index

:[2]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.ang

:[end]