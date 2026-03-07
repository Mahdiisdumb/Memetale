.localvar 0 arguments

:[0]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_depth(argc=0)
popz.v

:[2]
push.v self.pathmode
pushi.e 1
cmp.i.v EQ
bf [7]

:[3]
push.v self.path_position
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
b [7]

:[5]
push.v self.path_speed
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
push.d 0.2
pop.v.d self.image_speed

:[7]
push.v self.pathmode
pushi.e 0
cmp.i.v EQ
bf [10]

:[8]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[10]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.d 0.2
pop.v.d self.image_speed

:[12]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [end]

:[13]
pushi.e 0
conv.i.v
call.i scr_npcdir(argc=1)
popz.v

:[end]