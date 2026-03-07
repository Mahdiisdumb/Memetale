.localvar 0 arguments

:[0]
push.v self.blconwriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
b [end]

:[2]
pushi.e 2
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[end]