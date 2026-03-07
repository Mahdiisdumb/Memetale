.localvar 0 arguments

:[0]
push.v self.turts
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i 863.direction

:[2]
push.v self.turts
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 90
pop.v.i 863.direction

:[4]
push.v self.turts
pushi.e 9
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i 863.direction

:[6]
push.v self.turts
pushi.e 10
cmp.i.v EQ
bf [10]

:[7]
pushi.e 863
pushenv [9]

:[8]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 40
conv.i.v
call.i path_start(argc=4)
popz.v

:[9]
popenv [8]

:[10]
push.v self.turts
pushi.e 13
cmp.i.v EQ
bf [12]

:[11]
pushi.e 8
pop.v.i self.conversation

:[12]
pushi.e 12
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.turts
pushi.e 1
add.i.v
pop.v.v self.turts

:[end]