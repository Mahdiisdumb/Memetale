.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 0
pop.v.i self.alldead
pushi.e 0
pop.v.i global.encounter
pushi.e 220
pop.v.i self.factor
pushi.e 0
pop.v.i self.desto
pushbltn.v self.room
pushi.e 144
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 80
pop.v.i self.factor

:[10]
pushbltn.v self.room
pushi.e 145
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 120
pop.v.i self.factor

:[15]
pushbltn.v self.room
pushi.e 159
cmp.i.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 80
pop.v.i self.factor

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
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 20
pop.v.i self.factor

:[25]
pushi.e 205
conv.i.v
pushi.e 40
conv.i.v
pushi.e 30
conv.i.v
push.v self.factor
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
call.i scr_enemynpc3(argc=0)
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
pushbltn.v self.room
pushi.e 174
cmp.i.v EQ
bf [29]

:[28]
pushi.e -5
pushi.e 400
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
b [30]

:[29]
push.e 0

:[30]
bf [end]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[end]