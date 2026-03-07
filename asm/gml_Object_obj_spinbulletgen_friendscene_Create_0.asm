.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.y
pop.v.v self.targety
push.v self.x
pop.v.v self.targetx
pushi.e 80
pop.v.i self.radius
pushi.e 0
pop.v.i self.ang
pushi.e 0
pop.v.i self.i
pushi.e 0
pop.v.i self.spec
pushi.e 0
pop.v.i self.created
push.v self.spec
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 130
pop.v.i self.radius

:[2]
pushi.e 0
pop.v.i self.amt

:[end]