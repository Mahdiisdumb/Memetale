.localvar 0 arguments

:[0]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.i
b [3]

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.apparenthp
push.v self.actualhp
push.v self.dmg
sub.v.v
cmp.v.v GT
bf [5]

:[4]
push.v self.apparenthp
push.v self.dmg
pushi.e 15
conv.i.d
div.d.v
sub.v.v
pop.v.v self.apparenthp
b [6]

:[5]
push.v self.actualhp
push.v self.dmg
sub.v.v
pop.v.v self.apparenthp

:[6]
push.v self.negative
pushi.e 0
cmp.i.v EQ
bf [9]

:[7]
push.v self.apparenthp
pushi.e 0
cmp.i.v LT
bf [9]

:[8]
pushi.e 0
pop.v.i self.apparenthp

:[9]
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]