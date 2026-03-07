.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.fade
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.curang
pushi.e 45
pop.v.i self.ang
pushi.e 4
pop.v.i self.num
pushi.e 20
pop.v.i self.rate
pushi.e 150
pop.v.i self.rr

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.curang
pushi.e 10
pop.v.i self.ang
pushi.e 6
pop.v.i self.num
pushi.e 20
pop.v.i self.rate
pushi.e 180
pop.v.i self.rr
pushi.e 1
pop.v.i self.fade

:[4]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.curang
pushi.e 12
pop.v.i self.ang
pushi.e 1
pop.v.i self.num
pushi.e 2
pop.v.i self.rate
pushi.e 140
pop.v.i self.rr
pushi.e 0
pop.v.i self.siner

:[6]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [end]

:[7]
pushi.e 0
pop.v.i self.curang
push.d 22.5
pop.v.d self.ang
pushi.e 8
pop.v.i self.num
pushi.e 20
pop.v.i self.rate
pushi.e 150
pop.v.i self.rr

:[end]