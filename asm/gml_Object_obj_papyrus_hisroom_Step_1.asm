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
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
conv.i.v
call.i scr_npc_watch(argc=1)
popz.v

:[10]
push.v self.intro
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.intro
pushi.e -5
pop.v.i self.vspeed
pushi.e 1414
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[12]
push.v self.intro
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.y
pushi.e 110
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 2
pop.v.i self.intro
pushi.e 0
pop.v.i self.vspeed
pushi.e -5
pop.v.i self.hspeed
pushi.e 1419
pop.v.i self.sprite_index

:[17]
push.v self.intro
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.v self.x
pushi.e 150
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 0
pop.v.i self.hspeed
pushi.e 1405
pop.v.i self.sprite_index
pushi.e 3
pop.v.i self.intro

:[22]
push.v self.intro
pushi.e 4
cmp.i.v EQ
bf [24]

:[23]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 144
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 5
pop.v.i self.intro

:[27]
push.v self.intro
pushi.e 5
cmp.i.v EQ
bf [end]

:[28]
pushi.e 1
pop.v.i global.interact

:[end]