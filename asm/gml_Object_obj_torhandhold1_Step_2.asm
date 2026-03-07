.localvar 0 arguments

:[0]
push.v self.path_position
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [11]

:[4]
pushi.e 1576
pushenv [6]

:[5]
call.i path_end(argc=0)
popz.v

:[6]
popenv [5]
call.i path_end(argc=0)
popz.v
pushi.e 0
pop.v.i global.phasing
pushi.e 1
pop.v.i 912.solid
pushi.e 1
pop.v.i 1576.visible
pushi.e 864
conv.i.v
push.v self.y
push.v self.x
pushi.e 12
add.i.v
call.i instance_create(argc=3)
pop.v.v self.tor
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.tor
conv.v.i
pushenv [8]

:[7]
pushi.e 180
pop.v.i self.direction

:[8]
popenv [7]
push.v self.tor
conv.v.i
pushenv [10]

:[9]
pushi.e 3
pop.v.i self.facing

:[10]
popenv [9]
pushi.e 0
pop.v.i self.visible
pushi.e 2
pop.v.i self.conversation

:[11]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [end]

:[15]
push.v self.tor
conv.v.i
pushenv [17]

:[16]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 41
conv.i.v
call.i path_start(argc=4)
popz.v

:[17]
popenv [16]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v
pushi.e 8
pop.v.i global.plot

:[end]