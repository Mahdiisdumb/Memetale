.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.waterboard
pushi.e 0
pop.v.i self.won
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [2]

:[1]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
pushglb.v global.plot
pushi.e 107
cmp.i.v LT
bf [6]

:[5]
pushi.e 107
pop.v.i global.plot

:[6]
pushi.e -5
pushi.e 386
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pushi.e -5
pushi.e 386
pop.v.i [array]global.flag

:[8]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [10]

:[9]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
pushi.e 420
pop.v.i self.xx
pushi.e 400
pop.v.i self.yy
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [14]

:[13]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.xx
pushi.e 20
add.i.v
pop.v.v self.xx
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [13]

:[14]
popz.i

:[15]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [17]

:[16]
pushglb.v global.plot
pushi.e 106
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [22]

:[19]
pushi.e 220
pop.v.i self.xx
pushi.e 180
pop.v.i self.yy
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [21]

:[20]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.yy
pushi.e 20
add.i.v
pop.v.v self.yy
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [20]

:[21]
popz.i

:[22]
pushbltn.v self.room
pushi.e 273
cmp.i.v EQ
bf [30]

:[23]
pushglb.v global.plot
pushi.e 110
cmp.i.v GT
bt [25]

:[24]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [30]

:[27]
pushi.e 180
pop.v.i self.xx
pushi.e 440
pop.v.i self.yy
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [29]

:[28]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.xx
pushi.e 20
add.i.v
pop.v.v self.xx
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [28]

:[29]
popz.i

:[30]
pushbltn.v self.room
pushi.e 87
cmp.i.v EQ
bf [32]

:[31]
pushi.e -5
pushi.e 386
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [end]

:[34]
pushi.e 280
pop.v.i self.xx
pushi.e 140
pop.v.i self.yy
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [36]

:[35]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.xx
pushi.e 20
add.i.v
pop.v.v self.xx
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [35]

:[36]
popz.i

:[end]