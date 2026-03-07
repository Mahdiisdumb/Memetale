.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
push.v self.image_index
pushi.e 2
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [18]

:[4]
push.v self.mypart1
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 190
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
pushi.e 1
push.v self.dmgwriter
conv.v.i
pop.v.i [stacktop]self.negative
push.v self.takedamage
pop.v.v global.damage
push.v self.dmgwriter
conv.v.i
pushenv [8]

:[7]
pushglb.v global.damage
pop.v.v self.dmg

:[8]
popenv [7]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
push.v self.takedamage
sub.v.v
pushi.e 1
cmp.i.v LT
bf [10]

:[9]
push.v self.died
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i self.tempdie

:[13]
push.v self.tempdie
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 16
pop.v.i self.shudder
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v

:[15]
pushi.e 1
pop.v.i self.image_index
push.v self.died
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 2
pop.v.i self.image_index

:[17]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 11
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[18]
push.v self.sha
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.v self.x
pop.v.v self.sha

:[20]
push.v self.sha
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [22]

:[21]
push.v self.shudder
pushi.e 1
add.i.v
neg.v
pop.v.v self.shudder
b [23]

:[22]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[23]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.i self.sha
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
exit.i

:[25]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
push.v self.tempdie
pushi.e 1
cmp.i.v EQ
bf [end]

:[26]
pushi.e 4
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]