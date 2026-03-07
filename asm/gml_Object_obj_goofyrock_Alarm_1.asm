.localvar 0 arguments

:[0]
pushi.e 1576
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.uncan

:[2]
popenv [1]
pushi.e 0
pop.v.i global.interact
push.v self.conversation
pushi.e 1
add.i.v
pop.v.v self.conversation
pushi.e 0
pop.v.i self.path_speed
pushi.e 0
pop.v.i 1576.speed
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [6]

:[3]
pushi.e 1352
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.image_index

:[5]
popenv [4]

:[6]
push.v self.conversation
pushi.e 13
cmp.i.v GT
bf [end]

:[7]
pushi.e 1
pushi.e -5
pushi.e 33
pop.v.i [array]global.flag
pushi.e 280
pop.v.i self.x
pushi.e 15
pop.v.i self.conversation
pushi.e 1352
pushenv [9]

:[8]
pushi.e 1
pop.v.i self.image_index

:[9]
popenv [8]

:[end]