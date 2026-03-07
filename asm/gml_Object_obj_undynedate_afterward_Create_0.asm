.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 120
pop.v.i 1576.x
pushi.e 160
pop.v.i 1576.y
pushi.e 1
pop.v.i global.interact

:[3]
pushi.e 1063
conv.i.v
pushi.e 135
conv.i.v
pushi.e 150
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
pushi.e 1505
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushi.e -5
pushi.e 390
pop.v.i [array]global.flag
b [end]

:[4]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]