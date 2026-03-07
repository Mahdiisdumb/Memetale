.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.conversation
pushi.e 863
pushenv [6]

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
call.i path_start(argc=4)
popz.v

:[6]
popenv [5]

:[7]
pushi.e 863
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[8]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.v 863.path_position
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [17]

:[12]
push.d 2.5
pop.v.d self.conversation
pushi.e 927
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.on

:[14]
popenv [13]
pushi.e 863
pushenv [16]

:[15]
call.i path_end(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 90
pop.v.i 863.direction
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 4
pop.v.i self.conversation
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i global.plot

:[22]
pushi.e 863
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[23]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [26]

:[24]
push.v 863.path_position
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v 1576.y
push.v 863.y
sub.v.v
call.i abs(argc=1)
pushi.e 50
cmp.i.v LT
b [27]

:[26]
push.e 0

:[27]
bf [end]

:[28]
pushi.e 5
pop.v.i self.conversation
pushi.e 863
pushenv [30]

:[29]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 39
conv.i.v
call.i path_start(argc=4)
popz.v

:[30]
popenv [29]

:[end]