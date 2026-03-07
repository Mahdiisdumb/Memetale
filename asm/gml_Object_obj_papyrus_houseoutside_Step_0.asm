.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.myinteract

:[2]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[3]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[end]