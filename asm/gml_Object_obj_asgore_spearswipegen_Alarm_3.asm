.localvar 0 arguments

:[0]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.type
push.v self.diff
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 12
pop.v.i self.flashtimer
pushi.e 1
pop.v.i self.typeamt

:[2]
push.v self.diff
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 9
pop.v.i self.flashtimer
pushi.e 2
pop.v.i self.typeamt

:[4]
push.v self.diff
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 7
pop.v.i self.flashtimer
pushi.e 2
pop.v.i self.typeamt

:[6]
push.v self.diff
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 7
pop.v.i self.flashtimer
pushi.e 3
pop.v.i self.typeamt

:[8]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.typeno

:[end]