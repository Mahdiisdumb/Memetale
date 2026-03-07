.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index

:[end]