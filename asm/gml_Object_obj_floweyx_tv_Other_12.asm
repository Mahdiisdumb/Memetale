.localvar 0 arguments

:[0]
push.v self.tvmode
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 16
conv.i.v
pushi.e 15
conv.i.v
call.i choose(argc=2)
pop.v.v self.tt
pushi.e 4
pop.v.i self.tvmode
pushi.e 15
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 40
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]