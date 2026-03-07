.localvar 0 arguments

:[0]
pushi.e 15
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
push.v self.con
pushi.e 10
cmp.i.v GT
bf [end]

:[1]
pushi.e 0
pop.v.i self.ql
push.v self.mainmove
push.v self.lastmove
sub.v.v
pushi.e 10
cmp.i.v GT
bf [3]

:[2]
push.v self.ql
pushi.e 1
add.i.v
pop.v.v self.ql

:[3]
push.v 1576.x
push.v self.lastx
sub.v.v
call.i abs(argc=1)
push.v 1576.y
push.v self.lasty
sub.v.v
call.i abs(argc=1)
add.v.v
pop.v.v self.franto
push.v self.franto
pushi.e 30
cmp.i.v LT
bf [5]

:[4]
push.v self.franto
pushi.e 3
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.ql
pushi.e 1
add.i.v
pop.v.v self.ql

:[8]
push.v self.franto
pushi.e 38
cmp.i.v GT
bf [10]

:[9]
push.v self.unfrantic
pushi.e 1
add.i.v
pop.v.v self.unfrantic

:[10]
push.v 1576.x
pop.v.v self.lastx
push.v 1576.y
pop.v.v self.lasty
push.v self.ql
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.frantic
pushi.e 1
add.i.v
pop.v.v self.frantic

:[12]
push.v self.mainmove
pop.v.v self.lastmove

:[end]