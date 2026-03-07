.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e -5
pushi.e 370
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.firingspeed
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 9
pop.v.i self.dmg
pushi.e 0
pop.v.i self.siner
pushi.e 45
pop.v.i global.turntimer

:[2]
pushi.e -5
pushi.e 370
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bt [4]

:[3]
pushi.e -5
pushi.e 370
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [end]

:[6]
pushi.e 55
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[8]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
add.i.v
pop.v.v 749.x
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.b
pushi.e 679
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 550
push.v self.i
pushi.e 100
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.bb
push.v self.b
push.v self.bb
conv.v.i
pop.v.v [stacktop]self.blue
pushi.e -12
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[end]