.localvar 0 arguments

:[0]
push.v other.fade
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
push.v other.id
conv.v.i
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.fade

:[3]
popenv [2]
push.v other.id
conv.v.i
pushenv [5]

:[4]
pushi.e -6
pop.v.i self.speed

:[5]
popenv [4]
push.v other.id
conv.v.i
pushenv [7]

:[6]
push.d 0.1
pop.v.d self.friction

:[7]
popenv [6]
pushi.e 1681
pushenv [9]

:[8]
pushi.e 1
pop.v.i self.ting_s

:[9]
popenv [8]

:[10]
pushi.e 1
pop.v.i self.fade

:[end]