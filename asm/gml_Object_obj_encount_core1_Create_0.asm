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
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.alldead
pushi.e 0
pop.v.i global.encounter
pushi.e 240
pop.v.i self.factor
pushi.e 0
pop.v.i self.desto
pushi.e -5
pushi.e 423
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [7]

:[6]
pushi.e -5
pushi.e 426
push.v [array]global.flag
pushi.e 4
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
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [12]

:[11]
pushi.e 70
pop.v.i self.factor

:[12]
pushi.e 205
conv.i.v
pushi.e 40
conv.i.v
pushi.e 50
conv.i.v
push.v self.factor
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
call.i scr_enemynpc3(argc=0)
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]