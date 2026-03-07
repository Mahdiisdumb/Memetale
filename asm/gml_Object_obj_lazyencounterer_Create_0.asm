.localvar 0 arguments

:[0]
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
pop.v.i self.cl
pushbltn.v self.room
pushi.e 144
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 1
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
pushbltn.v self.room
pushi.e 159
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 2
cmp.i.v GT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 3
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
pushbltn.v self.room
pushi.e 174
cmp.i.v EQ
bf [22]

:[21]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 4
cmp.i.v GT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [27]

:[26]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [end]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[end]