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
pushi.e 0
pop.v.i self.STOPPER
push.d 0.334
pop.v.d self.image_speed
pushi.e 1517
pop.v.i self.dsprite
pushi.e 1522
pop.v.i self.usprite
pushi.e 1516
pop.v.i self.lsprite
pushi.e 1515
pop.v.i self.rsprite
pushi.e 1517
pop.v.i self.dtsprite
pushi.e 1522
pop.v.i self.utsprite
pushi.e 1516
pop.v.i self.ltsprite
pushi.e 1515
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.npcdir
pushi.e 0
pop.v.i self.d
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.active
pushi.e 1
pop.v.i self.new
pushi.e 0
pop.v.i self.sans
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.sans

:[2]
pushbltn.v self.room
pushi.e 134
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.new

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 60
cmp.i.v LT
bf [7]

:[6]
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.rememberx
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remembery
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushglb.v global.plot
pushi.e 121
cmp.i.v GT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
pushbltn.v self.room
pushi.e 135
cmp.i.v EQ
bf [14]

:[10]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v 1576.y
pushi.e 100
add.i.v
pop.v.v self.y

:[12]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
push.v 1576.y
pushi.e 100
sub.i.v
pop.v.v self.y

:[14]
pushbltn.v self.room
pushi.e 136
cmp.i.v EQ
bf [19]

:[15]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v 1576.x
pushi.e 100
sub.i.v
pop.v.v self.x

:[17]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.v 1576.x
pushi.e 100
add.i.v
pop.v.v self.x

:[19]
pushbltn.v self.room
pushi.e 137
cmp.i.v EQ
bf [end]

:[20]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v 1576.x
pushi.e 60
sub.i.v
pop.v.v self.x

:[22]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [end]

:[23]
push.v 1576.x
pushi.e 60
add.i.v
pop.v.v self.x

:[end]