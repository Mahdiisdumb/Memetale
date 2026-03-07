.localvar 0 arguments

:[0]
push.v self.shudder
pushi.e 16
cmp.i.v EQ
bf [4]

:[1]
pushi.e 190
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
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

:[4]
push.v self.shudder
pushi.e 2
sub.i.v
pop.v.v self.shudder
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
exit.i

:[6]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]