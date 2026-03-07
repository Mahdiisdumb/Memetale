.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.u
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.u
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.u
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.c
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.c
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.c
push.v self.object_index
call.i instance_number(argc=1)
pop.v.v self.m
pushi.e 100
pop.v.i self.maxm
pushi.e 0
pop.v.i self.j
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.y
pushi.e 2000
conv.i.d
push.v self.m
div.v.d
sub.v.v
pop.v.v self.y
push.i 500000
push.v self.m
sub.v.i
pop.v.v self.depth

:[end]