.localvar 0 arguments

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 473
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.cn
conv.v.i
pop.v.v [array]self.c
pushi.e 2
pushi.e -1
push.v self.cn
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushi.e -1
push.v self.cn
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.cn
pushi.e 1
add.i.v
pop.v.v self.cn

:[2]
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]