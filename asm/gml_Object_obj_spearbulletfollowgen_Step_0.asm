.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [6]

:[1]
pushi.e 272
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.deactivate

:[3]
popenv [2]
pushi.e 273
pushenv [5]

:[4]
pushi.e 3
pop.v.i self.darkify

:[5]
popenv [4]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushglb.v global.turntimer
pushi.e 4
cmp.i.v LT
bf [end]

:[7]
pushi.e 273
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [25]

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
bf [25]

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
pushi.e 272
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.deactivate

:[20]
popenv [19]
pushi.e 273
pushenv [22]

:[21]
pushi.e 3
pop.v.i self.darkify

:[22]
popenv [21]
pushi.e 273
pushenv [24]

:[23]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[24]
popenv [23]

:[25]
pushi.e 283
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [38]

:[26]
push.v 283.order
pushi.e 6
cmp.i.v EQ
bf [38]

:[27]
pushi.e 30
pop.v.i global.turntimer
pushi.e 283
pushenv [29]

:[28]
pushi.e 40
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[29]
popenv [28]
push.v 283.order
pushi.e 6
cmp.i.v EQ
bf [31]

:[30]
pushi.e -8
pop.v.i 283.lesson

:[31]
pushi.e 283
pushenv [33]

:[32]
pushi.e 1
pop.v.i self.deactivate

:[33]
popenv [32]
pushi.e 283
pushenv [35]

:[34]
pushi.e 3
pop.v.i self.darkify

:[35]
popenv [34]
pushi.e 283
pushenv [37]

:[36]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[37]
popenv [36]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[end]