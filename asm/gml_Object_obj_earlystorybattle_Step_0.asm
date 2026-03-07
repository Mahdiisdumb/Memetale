.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 221
cmp.i.v EQ
bf [4]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 2
cmp.i.v LTE
bf [4]

:[3]
pushi.e -5
pushi.e 455
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [8]

:[6]
push.v 1576.x
pushi.e 90
cmp.i.v LT
bf [8]

:[7]
pushi.e 3
pop.v.i global.border
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pushi.e -5
pushi.e 455
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[8]
pushbltn.v self.room
pushi.e 221
cmp.i.v EQ
bf [13]

:[9]
push.v self.con
pushi.e 2
cmp.i.v LT
bf [13]

:[10]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 2
cmp.i.v LTE
bf [13]

:[11]
pushi.e -5
pushi.e 455
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e -5
pushi.e 456
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [17]

:[15]
push.v 1576.x
pushi.e 180
cmp.i.v GT
bf [17]

:[16]
pushi.e 3
pop.v.i global.border
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pushi.e -5
pushi.e 455
pop.v.i [array]global.flag
pushi.e 3
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[17]
pushbltn.v self.room
pushi.e 222
cmp.i.v EQ
bf [21]

:[18]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [21]

:[19]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 2
cmp.i.v LTE
bf [21]

:[20]
pushi.e -5
pushi.e 456
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [25]

:[23]
push.v 1576.x
pushi.e 460
cmp.i.v GT
bf [25]

:[24]
pushi.e 3
pop.v.i global.border
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pushi.e -5
pushi.e 456
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[25]
pushbltn.v self.room
pushi.e 222
cmp.i.v EQ
bf [30]

:[26]
push.v self.con
pushi.e 2
cmp.i.v LT
bf [30]

:[27]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 2
cmp.i.v LTE
bf [30]

:[28]
pushi.e -5
pushi.e 456
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e -5
pushi.e 455
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
b [31]

:[30]
push.e 0

:[31]
bf [end]

:[32]
push.v 1576.x
pushi.e 100
cmp.i.v LT
bf [end]

:[33]
pushi.e 3
pop.v.i global.border
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pushi.e -5
pushi.e 456
pop.v.i [array]global.flag
pushi.e 3
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]