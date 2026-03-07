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
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 38
conv.i.v
call.i path_start(argc=4)
popz.v
pushi.e 11
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
push.v self.conversation
pushi.e 1
add.i.v
pop.v.v self.conversation
push.v 1576.x
push.v self.x
pushi.e 15
add.i.v
cmp.v.v GT
bf [6]

:[5]
pushi.e 1
pop.v.i 1576.hspeed

:[6]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
pushi.e 1
pop.v.i self.path_speed
pushi.e 11
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
push.v self.conversation
pushi.e 1
add.i.v
pop.v.v self.conversation
push.v 1576.depth
push.v self.depth
cmp.v.v GT
bf [12]

:[11]
pushi.e -1
pop.v.i 1576.vspeed

:[12]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
pushi.e 1
pop.v.i self.path_speed
pushi.e 61
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
push.v self.conversation
pushi.e 1
add.i.v
pop.v.v self.conversation
push.v 1576.depth
push.v self.depth
cmp.v.v LT
bf [18]

:[17]
pushi.e 1
pop.v.i 1576.vspeed

:[18]
pushi.e 11
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[19]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v self.conversation
push.d 10.5
cmp.d.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [26]

:[23]
pushi.e 1352
pushenv [25]

:[24]
pushi.e 0
pop.v.i self.image_index

:[25]
popenv [24]
pushi.e 2
pop.v.i self.path_speed
pushi.e 11
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.conversation
push.d 0.5
add.d.v
pop.v.v self.conversation

:[26]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.conversation
pushi.e 13
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [32]

:[30]
pushi.e 1
pop.v.i self.path_speed
pushi.e 21
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
push.v self.conversation
pushi.e 1
add.i.v
pop.v.v self.conversation
push.v 1576.x
push.v self.x
pushi.e 15
add.i.v
cmp.v.v GT
bf [32]

:[31]
pushi.e 1
pop.v.i 1576.hspeed

:[32]
push.v self.conversation
pushi.e 15
cmp.i.v EQ
bf [end]

:[33]
pushi.e 280
pop.v.i self.x

:[end]