.localvar 0 arguments

:[0]
push.v self.canttalk
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.myinteract

:[3]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[4]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[end]