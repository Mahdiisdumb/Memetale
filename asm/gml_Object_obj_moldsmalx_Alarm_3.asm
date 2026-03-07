.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 1
cmp.i.v NEQ
bf [6]

:[1]
pushi.e 1
pop.v.i self.stage
push.v self.mypart1
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 1
pop.v.i self.visible
pushi.e 190
conv.i.v
push.v self.y
pushi.e 24
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
pushenv [5]

:[4]
pushglb.v global.damage
pop.v.v self.dmg

:[5]
popenv [4]
pushi.e 1
pop.v.i self.image_index
push.v self.hurtsound
call.i snd_play(argc=1)
popz.v
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.scalevalue
pushi.e 0
pop.v.i self.gravity

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