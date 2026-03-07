.localvar 0 arguments

:[0]
push.v 1576.x
pushi.e 220
cmp.i.v GT
bf [4]

:[1]
pushi.e -5
pushi.e 421
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -5
pushi.e 421
pop.v.i [array]global.flag
pushi.e 5
pop.v.i self.con

:[7]
push.v 1576.x
pushi.e 360
cmp.i.v GT
bf [11]

:[8]
pushi.e -5
pushi.e 421
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pushi.e -5
pushi.e 421
pop.v.i [array]global.flag
pushi.e 5
pop.v.i self.con

:[14]
push.v 1576.x
pushi.e 480
cmp.i.v GT
bf [18]

:[15]
pushi.e -5
pushi.e 421
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [18]

:[16]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pushi.e -5
pushi.e 421
pop.v.i [array]global.flag
pushi.e 5
pop.v.i self.con

:[21]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [23]

:[22]
pushi.e 34
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1262
conv.i.v
pushi.e 220
conv.i.v
push.v 1576.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dm
pushi.e -3
push.v self.dm
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 6
pop.v.i self.con

:[23]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [26]

:[24]
push.v self.dm
conv.v.i
push.v [stacktop]self.y
pushi.e 130
cmp.i.v LT
bf [26]

:[25]
pushi.e 0
push.v self.dm
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 7
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v

:[26]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [34]

:[27]
pushi.e 1
pop.v.i global.mercy
pushi.e -5
pushi.e 421
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 64
pop.v.i global.battlegroup

:[29]
pushi.e -5
pushi.e 421
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
pushi.e 68
pop.v.i global.battlegroup

:[31]
pushi.e -5
pushi.e 421
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [33]

:[32]
pushi.e 67
pop.v.i global.battlegroup

:[33]
pushi.e 9
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 34
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [end]

:[35]
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.interact
pushi.e 1262
pushenv [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
popenv [36]
pushi.e 0
pop.v.i self.con

:[end]