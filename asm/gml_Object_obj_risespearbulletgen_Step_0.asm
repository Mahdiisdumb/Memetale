.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [4]

:[1]
pushi.e 269
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.deactivate

:[3]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushglb.v global.turntimer
pushi.e 4
cmp.i.v LT
bf [end]

:[5]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 269
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.deactivate

:[7]
popenv [6]
pushi.e 273
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[8]
push.v 273.order
pushi.e 9
cmp.i.v EQ
bt [10]

:[9]
push.v 273.order
pushi.e 15
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [23]

:[12]
pushi.e 30
pop.v.i global.turntimer
push.v 273.order
pushi.e 9
cmp.i.v EQ
bf [14]

:[13]
pushi.e 8
pop.v.i 273.lesson

:[14]
push.v 273.order
pushi.e 15
cmp.i.v EQ
bf [16]

:[15]
pushi.e 13
pop.v.i 273.lesson

:[16]
push.v 273.order
pushi.e 24
cmp.i.v EQ
bf [18]

:[17]
pushi.e 22
pop.v.i 273.lesson

:[18]
pushi.e 273
pushenv [20]

:[19]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[20]
popenv [19]
pushi.e 269
pushenv [22]

:[21]
pushi.e 1
pop.v.i self.deactivate

:[22]
popenv [21]

:[23]
pushi.e 283
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[24]
push.v 283.order
pushi.e 6
cmp.i.v EQ
bf [34]

:[25]
pushi.e 30
pop.v.i global.turntimer
pushi.e 283
pushenv [27]

:[26]
pushi.e 40
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[27]
popenv [26]
push.v 283.order
pushi.e 6
cmp.i.v EQ
bf [29]

:[28]
pushi.e -8
pop.v.i 283.lesson

:[29]
pushi.e 283
pushenv [31]

:[30]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[31]
popenv [30]
pushi.e 269
pushenv [33]

:[32]
pushi.e 1
pop.v.i self.deactivate

:[33]
popenv [32]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[end]