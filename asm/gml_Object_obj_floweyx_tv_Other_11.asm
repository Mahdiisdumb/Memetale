.localvar 0 arguments

:[0]
pushi.e 32
pop.v.i self.shudder
push.v self.tvmode
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sh
pushi.e 6
push.v self.sh
conv.v.i
pop.v.i [stacktop]self.shakex
pushi.e 6
push.v self.sh
conv.v.i
pop.v.i [stacktop]self.shakey
pushi.e 35
conv.i.v
pushi.e 28
conv.i.v
pushi.e 27
conv.i.v
pushi.e 22
conv.i.v
pushi.e 20
conv.i.v
pushi.e 14
conv.i.v
pushi.e 13
conv.i.v
pushi.e 12
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=10)
pop.v.v self.tt
pushi.e 4
pop.v.i self.tvmode
pushi.e 15
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 40
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1592
pushenv [3]

:[2]
pushi.e 2
pop.v.i self.frozen

:[3]
popenv [2]

:[end]