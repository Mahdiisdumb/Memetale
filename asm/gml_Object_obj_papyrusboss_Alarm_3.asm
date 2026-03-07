.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 1
cmp.i.v NEQ
bf [6]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pop.v.v self.prevhp
push.v self.mypart1
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 0
pop.v.i self.dogignore
pushi.e 190
conv.i.v
push.v self.y
pushi.e 150
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
push.v self.takedamage
pop.v.v global.damage
push.v self.dmgwriter
conv.v.i
pushenv [5]

:[4]
pushglb.v global.damage
pop.v.v self.dmg

:[5]
popenv [4]
pushi.e 1
pop.v.i self.image_index
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v

:[6]
push.v self.x
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
push.v self.shudder
pushi.e 2
add.i.v
neg.v
pop.v.v self.shudder
b [9]

:[8]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[9]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
exit.i

:[11]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]