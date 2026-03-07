.localvar 0 arguments

:[0]
pushi.e 476
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.sw
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.typeamt
pushi.e 1
add.i.v
cmp.v.v LT
bf [3]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.type
push.v self.sw
conv.v.i
push.v self.i
conv.v.i
pop.v.v [array]self.type
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.diff
pushi.e 0
cmp.i.v EQ
bf [7]

:[4]
push.v self.sw
conv.v.i
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.amt
pushi.e 0
pop.v.i self.quick
push.d 0.5
pop.v.d self.cutspeed
pushi.e 12
pop.v.i self.flashtimer
pushi.e 2
pop.v.i self.swipewait
pushi.e 5
pop.v.i self.initswipewait

:[6]
popenv [5]

:[7]
push.v self.diff
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
push.v self.sw
conv.v.i
pushenv [10]

:[9]
pushi.e 2
pop.v.i self.amt
pushi.e 0
pop.v.i self.quick
push.d 0.5
pop.v.d self.cutspeed
pushi.e 12
pop.v.i self.flashtimer
pushi.e 0
pop.v.i self.swipewait
pushi.e 8
pop.v.i self.initswipewait

:[10]
popenv [9]

:[11]
push.v self.diff
pushi.e 2
cmp.i.v EQ
bf [15]

:[12]
push.v self.sw
conv.v.i
pushenv [14]

:[13]
pushi.e 2
pop.v.i self.amt
pushi.e 0
pop.v.i self.quick
pushi.e 1
pop.v.i self.cutspeed
pushi.e 7
pop.v.i self.flashtimer
pushi.e 3
pop.v.i self.swipewait
pushi.e 4
pop.v.i self.initswipewait

:[14]
popenv [13]

:[15]
push.v self.diff
pushi.e 3
cmp.i.v EQ
bf [19]

:[16]
push.v self.sw
conv.v.i
pushenv [18]

:[17]
pushi.e 3
pop.v.i self.amt
pushi.e 0
pop.v.i self.quick
pushi.e 1
pop.v.i self.cutspeed
pushi.e 7
pop.v.i self.flashtimer
pushi.e 3
pop.v.i self.swipewait
pushi.e 3
pop.v.i self.initswipewait

:[18]
popenv [17]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[end]