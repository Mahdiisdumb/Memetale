.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
push.v 1418.level
pushi.e 2
cmp.i.v EQ
bt [3]

:[2]
push.v 1418.level
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.myinteract
b [7]

:[6]
pushi.e 0
pop.v.i self.myinteract

:[7]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [10]

:[8]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[10]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushi.e 1
pop.v.i global.interact
pushi.e 788
conv.i.v
push.v 1576.y
pushi.e 20
add.i.v
push.v 1576.x
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.con

:[end]