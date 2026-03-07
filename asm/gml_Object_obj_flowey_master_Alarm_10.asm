.localvar 0 arguments

:[0]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 80
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
push.v self.destroyer
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 30
push.v self.destroyer
pushi.e 2
mul.i.v
sub.v.i
pushi.e -1
pushi.e 10
pop.v.v [array]self.alarm

:[2]
pushi.e -1
pushi.e 10
push.v [array]self.alarm
pushi.e 3
cmp.i.v LTE
bf [4]

:[3]
pushi.e 0
pop.v.i global.my_hp
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 10
pop.v.v [array]self.alarm

:[4]
push.v self.destroyer
pushi.e 31
cmp.i.v GT
bf [end]

:[5]
pushi.e 1
pop.v.i global.my_hp
pushi.e 0
pop.v.i 1587.move
pushi.e -1
pushi.e 1587
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.my_hp
pushi.e -1
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i 1595.md
pushi.e 20
pop.v.i self.dcon

:[end]