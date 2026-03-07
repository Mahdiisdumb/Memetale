.localvar 0 arguments

:[0]
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 99
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.btype
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.bmax
pushi.e 0
pop.v.i self.bno

:[end]