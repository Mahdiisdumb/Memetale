.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1116
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [8]

:[7]
push.d 0.2
pop.v.d self.image_speed
pushi.e 20
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [15]

:[9]
pushi.e 0
pop.v.i global.encounter
pushi.e 0
pop.v.i self.finished
pushi.e 1116
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[10]
push.v 1116.using
pushi.e 99
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.finished

:[12]
pushi.e 99
pop.v.i 1116.using
pushi.e 1116
pushenv [14]

:[13]
push.v self.image_alpha
push.d 0.08
sub.d.v
pop.v.v self.image_alpha

:[14]
popenv [13]

:[15]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [24]

:[16]
pushi.e 0
pop.v.i 1112.won
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [23]

:[18]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.block
pushi.e 0
cmp.i.v GT
bf [22]

:[19]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.block
conv.v.i
pushenv [21]

:[20]
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y

:[21]
popenv [20]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.block

:[22]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[23]
pushi.e 3
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [33]

:[25]
pushi.e 1116
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [33]

:[26]
pushi.e 0
pop.v.i 1116.image_index
pushi.e 0
pop.v.i 1116.image_speed
pushi.e 1116
pushenv [28]

:[27]
push.v self.xstart
pop.v.v self.x

:[28]
popenv [27]
pushi.e 1116
pushenv [30]

:[29]
push.v self.ystart
pop.v.v self.y

:[30]
popenv [29]
pushi.e 1116
pushenv [32]

:[31]
push.v self.image_alpha
push.d 0.08
add.d.v
pop.v.v self.image_alpha

:[32]
popenv [31]

:[33]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [39]

:[34]
pushi.e 1112
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [36]

:[35]
pushi.e 0
pop.v.i 1112.waterboard

:[36]
pushi.e 1116
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [38]

:[37]
pushi.e 0
pop.v.i 1116.using
pushi.e 0
pop.v.i 1116.myinteract
push.i 800000
pop.v.i 1116.depth

:[38]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.interact

:[39]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [end]

:[40]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract

:[end]