.localvar 0 arguments

:[0]
push.v self.jump
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v 1576.path_position
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 60
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.jump

:[3]
push.v self.jump
pushi.e 3
cmp.i.v EQ
bf [end]

:[4]
push.v 1576.path_position
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.jump
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.background_visible
pushi.e 1
pop.v.i 2.solid
pushi.e 0
pop.v.i global.phasing

:[end]