.localvar 0 arguments

:[0]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.md
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.id
pushi.e -5
pushi.e 0
pop.v.v [array]global.monsterinstance
pushi.e 0
pop.v.i global.mytarget
pushi.e 900
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterhp
pushi.e 900
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstermaxhp
pushi.e 0
pop.v.i self.hearts
push.l 9999999999
pop.v.l global.damage
pushi.e 190
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.d
pushglb.v global.damage
push.v self.d
conv.v.i
pop.v.v [stacktop]self.takedamage
pushi.e 1
pop.v.i self.md

:[5]
push.v self.xstart
push.v self.shudder
add.v.v
pop.v.v self.asgorex
push.v self.shudder
neg.v
pop.v.v self.shudder
push.v self.shudder
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.shudder
pushi.e 3
sub.i.v
pop.v.v self.shudder

:[7]
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.shudder
call.i abs(argc=1)
pushi.e 1
cmp.i.v LT
bf [end]

:[8]
pushi.e 0
pop.v.i self.shudder
pushi.e 2
pop.v.i self.con
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]