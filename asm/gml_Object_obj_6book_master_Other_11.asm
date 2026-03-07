.localvar 0 arguments

:[0]
push.v self.alrnum
pushi.e 4
cmp.i.v LT
bf [2]

:[1]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 5
add.i.v
pop.i.v [array]self.alarm

:[2]
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.alarm
pushi.e 5
add.i.v
pop.i.v [array]self.alarm
pushi.e -1
pushi.e 6
dup.i 1
push.v [array]self.alarm
pushi.e 5
add.i.v
pop.i.v [array]self.alarm
pushi.e -1
pushi.e 7
dup.i 1
push.v [array]self.alarm
pushi.e 5
add.i.v
pop.i.v [array]self.alarm
pushi.e -1
pushi.e 8
dup.i 1
push.v [array]self.alarm
pushi.e 5
add.i.v
pop.i.v [array]self.alarm
pushi.e -1
pushi.e 9
dup.i 1
push.v [array]self.alarm
pushi.e 5
add.i.v
pop.i.v [array]self.alarm
pushi.e -1
pushi.e 10
dup.i 1
push.v [array]self.alarm
pushi.e 5
add.i.v
pop.i.v [array]self.alarm

:[end]