.localvar 0 arguments

:[0]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 218
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
push.v 218.ditch
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.pop
pushi.e 1
sub.i.v
pop.v.v self.pop

:[3]
push.v self.y
pushi.e 120
sub.i.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y
push.d 4.2
pop.v.d self.vspeed
push.d 0.1
pop.v.d self.friction
pushi.e 0
pop.v.i self.dmg
push.d -0.1
pop.v.d self.toothspeed
pushi.e 265
pop.v.i self.toothdist
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
pushi.e 25
sub.i.v
pop.v.v self.y
push.v self.toothdist
pushi.e 50
add.i.v
pop.v.v self.toothdist

:[5]
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.v self.y
pushi.e 35
sub.i.v
pop.v.v self.y
push.v self.toothdist
pushi.e 70
add.i.v
pop.v.v self.toothdist

:[7]
pushi.e 40
conv.i.v
call.i random(argc=1)
pop.v.v self.seed
pushi.e 0
pop.v.i self.i

:[8]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 5
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v LT
bf [10]

:[9]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 5
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.toothxx
push.v self.i
pop.v.v self.maxi
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
push.d 12.566370614359172
push.v self.maxi
div.v.d
pop.v.v self.factor
pushi.e 0
pop.v.i self.i

:[11]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
pushi.e 5
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v LT
bf [end]

:[12]
push.v self.y
push.v self.seed
push.v self.i
push.v self.factor
mul.v.v
add.v.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.toothyy
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[end]