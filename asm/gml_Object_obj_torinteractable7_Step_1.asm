.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 766
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 766.image_index
pop.v.v self.image_index
b [4]

:[3]
pushi.e 0
pop.v.i self.image_index

:[4]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e 773
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v 773.image_index
pop.v.v self.image_index
b [8]

:[7]
pushi.e 0
pop.v.i self.image_index

:[8]
pushi.e 2
conv.i.v
pushi.e 110
conv.i.v
call.i script_execute(argc=2)
popz.v

:[end]