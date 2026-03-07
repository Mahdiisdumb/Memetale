.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.type
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.type
call.i event_inherited(argc=0)
popz.v
pushi.e 1630
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
popenv [5]

:[end]