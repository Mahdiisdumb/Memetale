.localvar 0 arguments

:[0]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.noanim
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.siner
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x

:[5]
push.v self.noanim
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 60
sub.i.v
push.v self.goof
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 60
sub.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 301
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 4
sub.i.v
pushi.e 0
conv.i.v
pushi.e 311
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
push.v self.y
add.v.i
pushi.e 50
sub.i.v
push.v self.x
pushglb.v global.faceemotion
pushi.e 303
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.noanim
pushi.e 0
cmp.i.v EQ
bf [end]

:[8]
push.v self.sine
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[10]
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
pop.v.v self.goof
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 10
mul.i.v
pop.v.v self.doof
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.goof
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 60
sub.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 301
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.goof
pushi.e 60
conv.i.d
div.d.v
sub.v.i
pushi.e 2
conv.i.v
push.v self.y
pushi.e 102
add.i.v
pushi.e 70
add.i.v
push.v self.x
pushi.e 32
add.i.v
pushi.e 8
conv.i.v
pushi.e 313
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.off
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.doof
pushi.e 4
conv.i.d
div.d.v
pushi.e 10
add.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.goof
push.d 1.5
div.d.v
add.v.v
push.v self.x
pushi.e 44
add.i.v
pushi.e 0
conv.i.v
pushi.e 317
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.doof
pushi.e 4
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.goof
push.d 1.5
div.d.v
add.v.v
push.v self.x
pushi.e 22
add.i.v
pushi.e 0
conv.i.v
pushi.e 316
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.doof
pushi.e 4
conv.i.d
div.d.v
pushi.e 20
add.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.goof
push.d 1.5
div.d.v
add.v.v
push.v self.x
pushi.e 44
add.i.v
pushi.e 1
conv.i.v
pushi.e 317
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.doof
pushi.e 4
conv.i.d
div.d.v
pushi.e 10
sub.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.goof
push.d 1.5
div.d.v
add.v.v
push.v self.x
pushi.e 22
add.i.v
pushi.e 1
conv.i.v
pushi.e 316
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.goof
pushi.e 50
conv.i.d
div.d.v
sub.v.i
pushi.e 2
conv.i.v
push.v self.y
pushi.e 62
add.i.v
pushi.e 48
add.i.v
push.v self.goof
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 8
conv.i.v
pushi.e 314
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
push.v self.y
add.v.i
push.v self.goof
push.d 1.5
div.d.v
add.v.v
push.v self.x
push.v self.doof
pushi.e 4
conv.i.d
div.d.v
add.v.v
pushglb.v global.faceemotion
pushi.e 303
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.off
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.doof
pushi.e 4
conv.i.d
div.d.v
pushi.e 10
add.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.goof
push.d 1.5
div.d.v
add.v.v
push.v self.x
pushi.e 64
add.i.v
pushi.e 0
conv.i.v
pushi.e 315
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
push.v self.bidoof
pushi.e 1
sub.i.v
pop.v.v self.bidoof
pushi.e 1
pop.v.i self.sine
push.v self.spearalpha
push.d 0.03
sub.d.v
pop.v.v self.spearalpha
push.v self.spearalpha
push.i 16777215
conv.i.v
push.v self.doof
pushi.e 4
conv.i.d
div.d.v
pushi.e 10
add.i.v
push.v self.bidoof
add.v.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.goof
push.d 1.5
div.d.v
add.v.v
push.v self.bidoof
pushi.e 2
mul.i.v
sub.v.v
push.v self.x
pushi.e 64
add.i.v
pushi.e 1
conv.i.v
pushi.e 315
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.spearalpha
push.d -0.2
cmp.d.v LT
bf [end]

:[18]
pushi.e 1
pop.v.i self.noanim

:[end]