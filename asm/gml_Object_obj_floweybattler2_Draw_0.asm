.localvar 0 arguments

:[0]
push.v self.clap
pushi.e 3
cmp.i.v LT
bf [2]

:[1]
push.v self.depp
pop.v.v 1583.depth

:[2]
push.v self.heartdraw
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.clap
pushi.e 3
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
push.d 0.5
conv.d.v
push.v 1583.y
pushi.e 17
add.i.v
push.v 1583.x
pushi.e 5
add.i.v
pushi.e 0
conv.i.v
pushi.e 2379
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.clap
pushi.e 99
cmp.i.v NEQ
bf [11]

:[8]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [11]

:[9]
push.v self.heartdraw
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.on
pushi.e 1
pop.v.i self.heartdraw

:[11]
pushi.e 0
pop.v.i self.on
push.v self.clap
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1579
conv.i.v
push.v 1583.y
pushi.e 17
add.i.v
push.v 1583.x
pushi.e 5
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.heartdraw
pushi.e 0
pop.v.i 1583.visible
pushi.e 99
pop.v.i self.clap

:[13]
push.v self.fader
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
pushi.e 1579
pushenv [17]

:[15]
push.v self.clapper
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[17]
popenv [15]

:[end]