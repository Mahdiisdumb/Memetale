.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 8
cmp.i.v GT
bf [end]

:[1]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.xset
push.v self.xset
push.v self.xsetmem
cmp.v.v EQ
bf [3]

:[2]
push.v self.xset
pushi.e 1
add.i.v
pop.v.v self.xset

:[3]
push.v self.xset
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.xset

:[5]
push.v self.xset
pop.v.v self.xsetmem
pushi.e 269
conv.i.v
push.v 762.y
push.v 759.x
push.v self.xset
pushi.e 23
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.offchoice
push.v self.g
conv.v.i
pop.v.v [stacktop]self.type
pushglb.v global.firingrate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]