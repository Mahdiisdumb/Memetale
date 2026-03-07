.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.ended
pushi.e -5
pushi.e 418
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.ended

:[2]
pushi.e -5
pushi.e 419
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.ended

:[4]
pushi.e -5
pushi.e 420
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.ended

:[6]
push.v self.ended
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1185
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ff
pushi.e 4
push.v self.ff
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.ff
conv.v.i
pop.v.i [stacktop]self.basic

:[8]
pushi.e 0
pop.v.i self.timer

:[end]