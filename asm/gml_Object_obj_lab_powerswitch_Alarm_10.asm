.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushi.e 30
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[end]