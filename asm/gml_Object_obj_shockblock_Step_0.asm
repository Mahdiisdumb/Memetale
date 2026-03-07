.localvar 0 arguments

:[0]
pushi.e 997
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
push.v 997.onhead
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.hat
pushi.e 1
pop.v.i self.solid

:[3]
push.v self.shocking
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.hat
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.shocking
pushi.e 24
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v 1576.xprevious
pop.v.v self.memoryx
push.v 1576.yprevious
pop.v.v self.memoryy

:[8]
push.v self.shocking
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.hat
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v 1576.xprevious
pop.v.v 1576.x
push.v 1576.yprevious
pop.v.v 1576.y

:[13]
push.v self.shocking
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.v self.hat
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [end]

:[17]
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
sub.i.v
pop.v.v self.ggg
push.v self.memoryx
push.v self.ggg
add.v.v
pop.v.v 1576.x
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
sub.i.v
pop.v.v self.ggg
push.v self.memoryy
push.v self.ggg
add.v.v
pop.v.v 1576.y

:[end]