.localvar 0 arguments

:[0]
push.v self.ruff
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 20
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 17
pop.v.i 863.myinteract
b [end]

:[2]
pushi.e 0
pop.v.i 863.myinteract

:[end]