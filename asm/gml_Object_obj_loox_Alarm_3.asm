.localvar 0 arguments

:[0]
push.v self.sprite_index
pushi.e 208
cmp.i.v NEQ
bf [4]

:[1]
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
pushenv [3]

:[2]
pushglb.v global.damage
pop.v.v self.dmg

:[3]
popenv [2]
pushi.e 208
pop.v.i self.sprite_index
push.v self.hurtsound
call.i snd_play(argc=1)
popz.v

:[4]
push.v self.x
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
push.v self.shudder
pushi.e 2
add.i.v
neg.v
pop.v.v self.shudder
b [7]

:[6]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[7]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
exit.i

:[9]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]