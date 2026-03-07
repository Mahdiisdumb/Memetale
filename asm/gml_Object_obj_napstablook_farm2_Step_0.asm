.localvar 0 arguments

:[0]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.buffer
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.myinteract

:[5]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.myinteract

:[10]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[11]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[12]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i global.interact

:[14]
pushi.e 0
pop.v.i self.myinteract

:[end]