.localvar 0 arguments

:[0]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [8]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [8]

:[3]
pushi.e 1
pop.v.i self.con
pushi.e 518
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.death_c

:[5]
popenv [4]
pushi.e 744
pushenv [7]

:[6]
pushi.e -1
pop.v.i self.movement

:[7]
popenv [6]

:[8]
b [10]

:[9]
pushi.e 0
pop.v.i self.image_index

:[10]
pushi.e 0
pop.v.i self.on

:[end]