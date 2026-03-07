.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 207
cmp.i.v GT
bt [2]

:[1]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [8]

:[5]
pushglb.v global.plot
pushi.e 207
cmp.i.v EQ
bf [7]

:[6]
pushi.e -100
pop.v.i self.y
pushi.e 50
pop.v.i self.con
pushi.e 1324
conv.i.v
pushi.e 120
conv.i.v
pushi.e 580
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.asg
b [8]

:[7]
pushi.e 1324
conv.i.v
pushi.e 120
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.asg
push.v self.asg
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[8]
pushi.e 3
pop.v.i self.image_xscale

:[end]