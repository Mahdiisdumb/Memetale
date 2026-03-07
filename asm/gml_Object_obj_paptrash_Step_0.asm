.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v 1418.level
pushi.e 0
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
b [4]

:[3]
pushi.e 0
pop.v.i self.myinteract

:[4]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [7]

:[5]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[7]
push.v 1418.level
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
call.i scr_depth(argc=0)
popz.v

:[9]
push.v 1418.level
pushi.e 0
cmp.i.v GT
bf [end]

:[10]
push.i 100005
pop.v.i self.depth

:[end]