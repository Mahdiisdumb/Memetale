.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.ender
push.v self.buffer
pushi.e 1
add.i.v
pop.v.v self.buffer
push.v self.refuse
pushi.e 2
cmp.i.v NEQ
bf [13]

:[1]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
pushi.e -1
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.ender

:[3]
push.v 744.sprite_index
pushi.e 51
cmp.i.v NEQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.ender

:[5]
push.v self.buffer
pushi.e 30
cmp.i.v GT
bf [13]

:[6]
pushi.e 266
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 267
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [13]

:[10]
pushi.e 265
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[11]
push.v 265.done
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.ender

:[13]
push.v self.ender
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
pushi.e 266
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 267
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
push.v self.refuse
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 4
pop.v.i global.mnfight

:[20]
push.v self.refuse
pushi.e 1
cmp.i.v EQ
bf [39]

:[21]
push.v self.lesson
pushi.e 6
cmp.i.v EQ
bt [24]

:[22]
push.v self.lesson
pushi.e 11
cmp.i.v EQ
bt [24]

:[23]
push.v self.lesson
pushi.e 20
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [31]

:[26]
pushi.e 273
pushenv [28]

:[27]
pushi.e 3
pop.v.i self.darkify

:[28]
popenv [27]
pushi.e 273
pushenv [30]

:[29]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[30]
popenv [29]

:[31]
push.v self.lesson
pushi.e -7
cmp.i.v EQ
bt [34]

:[32]
push.v self.lesson
pushi.e -10
cmp.i.v EQ
bt [34]

:[33]
push.v self.lesson
pushi.e -14
cmp.i.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [39]

:[36]
pushi.e 283
pushenv [38]

:[37]
pushi.e 3
pop.v.i self.darkify
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[38]
popenv [37]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[end]