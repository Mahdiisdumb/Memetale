.localvar 0 arguments

:[0]
pushglb.v global.monstersprite
pop.v.v self.sprite_index
push.d 0.5
pop.v.d self.image_alpha
pushi.e 92
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 92
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.n

:[1]
push.v self.n
pushi.e 14
cmp.i.v LT
bf [end]

:[2]
pushi.e 183
conv.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
push.v self.sprite_width
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.y
add.v.v
pushi.e 8
sub.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
push.v self.sprite_width
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.x
add.v.v
pushi.e 8
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.j
pushi.e 8
push.v self.j
conv.v.i
push.v [stacktop]self.x
add.v.i
push.v self.x
sub.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
div.v.v
push.v self.j
conv.v.i
pop.v.v [stacktop]self.rightside
pushi.e 8
push.v self.j
conv.v.i
push.v [stacktop]self.y
add.v.i
push.v self.y
sub.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
div.v.v
push.v self.j
conv.v.i
pop.v.v [stacktop]self.topside
push.v self.n
pushi.e 1
add.i.v
pop.v.v self.n
b [1]

:[end]