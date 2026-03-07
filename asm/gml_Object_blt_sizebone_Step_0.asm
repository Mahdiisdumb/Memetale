.localvar 0 arguments

:[0]
push.v self.drawn
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.y
push.v self.ystart
push.v self.oscmax
sub.v.v
cmp.v.v LTE
bt [6]

:[5]
push.v self.y
push.v self.ystart
push.v self.oscmin
sub.v.v
cmp.v.v GTE
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
push.v self.osc
neg.v
pop.v.v self.osc

:[9]
push.v self.y
push.v self.osc
add.v.v
pop.v.v self.y

:[end]