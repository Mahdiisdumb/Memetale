.localvar 0 arguments

:[0]
push.v self.bull
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 5
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.fy
push.v self.fu
add.v.v
pop.v.v self.fy
push.v self.hy
push.v self.fu
neg.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.hy
push.v self.fy
pushi.e 3
cmp.i.v GT
bf [3]

:[2]
pushi.e -2
pop.v.i self.fu

:[3]
push.v self.fy
pushi.e -6
cmp.i.v LT
bf [end]

:[4]
pushi.e 2
pop.v.i self.fu

:[end]