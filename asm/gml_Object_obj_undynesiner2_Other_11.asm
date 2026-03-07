.localvar 0 arguments

:[0]
push.v self.idealww
pushi.e 50
cmp.i.v EQ
bf [4]

:[1]
push.d 0.1
pop.v.d self.idealww
pushi.e 274
pushenv [3]

:[2]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]

:[4]
push.v self.idealww
pushi.e 26
cmp.i.v EQ
bf [6]

:[5]
pushi.e 50
pop.v.i self.idealww

:[6]
push.v self.idealww
pushi.e 18
cmp.i.v EQ
bf [8]

:[7]
pushi.e 26
pop.v.i self.idealww

:[8]
push.v self.idealww
pushi.e 14
cmp.i.v EQ
bf [10]

:[9]
pushi.e 18
pop.v.i self.idealww

:[10]
push.v self.idealww
pushi.e 10
cmp.i.v EQ
bf [12]

:[11]
pushi.e 14
pop.v.i self.idealww

:[12]
push.v self.idealww
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e 10
pop.v.i self.idealww

:[14]
push.v self.idealww
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
pushi.e 6
pop.v.i self.idealww

:[16]
push.v self.idealww
pushi.e 0
cmp.i.v EQ
bf [end]

:[17]
pushi.e 2
pop.v.i self.idealww

:[end]