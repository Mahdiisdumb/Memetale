.localvar 0 arguments

:[0]
push.v self.t
pushi.e 13
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
push.v self.dog1
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.dog2
conv.v.i
pop.v.i [stacktop]self.speed

:[2]
push.v self.t
pushi.e 7
cmp.i.v EQ
bf [4]

:[3]
pushi.e 8
pop.v.i self.t

:[4]
push.v self.t
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 4
pop.v.i self.t

:[6]
push.v self.t
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 3
pop.v.i self.t
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[8]
push.v self.t
pushi.e 11
cmp.i.v EQ
bf [10]

:[9]
pushi.e 12
pop.v.i self.t

:[10]
push.v self.t
pushi.e 15
cmp.i.v EQ
bf [end]

:[11]
pushi.e 16
pop.v.i self.t

:[end]