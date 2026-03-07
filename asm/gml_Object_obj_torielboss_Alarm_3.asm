.localvar 0 arguments

:[0]
push.v self.xstart
pop.v.v self.x
push.v self.sprite_index
pushi.e 758
cmp.i.v NEQ
bf [3]

:[1]
push.v self.sprite_index
pushi.e 760
cmp.i.v NEQ
bf [3]

:[2]
push.v self.sprite_index
pushi.e 766
cmp.i.v NEQ
b [4]

:[3]
push.e 0

:[4]
bf [23]

:[5]
push.v self.shudder
pushi.e 16
cmp.i.v EQ
bt [7]

:[6]
push.v self.shudder
pushi.e 32
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [13]

:[9]
pushi.e 190
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
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
push.v self.conversation
pushi.e 4
cmp.i.v LT
bf [13]

:[12]
pushi.e 0
pop.v.i self.conversation

:[13]
pushi.e 758
pop.v.i self.sprite_index
pushglb.v global.damage
pushi.e 100
cmp.i.v GT
bf [15]

:[14]
pushi.e 760
pop.v.i self.sprite_index
pushi.e 0
conv.i.v
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v

:[15]
pushglb.v global.damage
pushi.e 100
cmp.i.v GT
bf [17]

:[16]
push.v self.conversation
pushi.e 13
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 766
pop.v.i self.sprite_index

:[20]
pushi.e -5
pushi.e 202
push.v [array]global.flag
pushi.e 20
cmp.i.v GTE
bf [22]

:[21]
pushi.e 766
pop.v.i self.sprite_index

:[22]
push.v self.hurtsound
call.i snd_play(argc=1)
popz.v

:[23]
push.v self.x
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [25]

:[24]
push.v self.shudder
pushi.e 2
add.i.v
neg.v
pop.v.v self.shudder
b [26]

:[25]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[26]
push.v self.shudder
pushi.e 2
sub.i.v
pop.v.v self.shudder
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
exit.i

:[28]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushglb.v global.damage
pushi.e 100
cmp.i.v GT
bf [end]

:[29]
pushi.e 3
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]