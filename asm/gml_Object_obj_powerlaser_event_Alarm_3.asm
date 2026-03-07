.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.ga
push.v self.powered
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.ga
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.ga

:[5]
push.v self.powered
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.ga
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.ga

:[10]
push.v self.powered
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.ga
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.ga

:[15]
pushi.e 37
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]