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
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
pushi.e 776
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 776.image_index
pop.v.v self.image_index
b [8]

:[3]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.path_speed
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pop.v.i self.image_index

:[8]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e 1
conv.i.v
call.i scr_npcdir(argc=1)
popz.v

:[end]