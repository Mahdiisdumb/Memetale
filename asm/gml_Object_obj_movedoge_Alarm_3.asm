.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 1
cmp.i.v NEQ
bf [12]

:[1]
push.v self.mypart1
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
push.v self.mypart2
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
push.v self.mypart3
conv.v.i
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
push.v self.mypart4
conv.v.i
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
pushi.e 190
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 48
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
push.v self.takedamage
pop.v.v global.damage
push.v self.dmgwriter
conv.v.i
pushenv [11]

:[10]
pushglb.v global.damage
pop.v.v self.dmg

:[11]
popenv [10]
pushi.e 1
pop.v.i self.image_index
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 11
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[12]
push.v self.x
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [14]

:[13]
push.v self.shudder
pushi.e 2
add.i.v
neg.v
pop.v.v self.shudder
b [15]

:[14]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[15]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
exit.i

:[17]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]