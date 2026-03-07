.localvar 0 arguments

:[0]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.rotter
pushi.e 1
add.i.v
pop.v.v self.rotter
push.v self.rotter
push.v self.speedmod
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.rotter
push.v self.rotter
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
pop.v.v self.rot
push.v self.rot
push.v self.rotmod
mul.v.v
pop.v.v self.rot
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rot
neg.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 75
add.i.v
push.v self.x
pushi.e 5
add.i.v
push.v self.image_index
pushi.e 296
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 2
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 35
add.i.v
push.v self.rot
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 295
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 3
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
pushi.e 5
add.i.v
push.v self.image_index
pushi.e 294
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.rot
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.rot
pushi.e 3
conv.i.d
div.d.v
sub.v.v
pushglb.v global.faceemotion
pushi.e 293
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [3]

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.partrot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.party
add.v.v
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.partx
add.v.v
push.v self.image_index
pushi.e 296
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.party
add.v.v
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.partx
add.v.v
push.v self.image_index
pushi.e 295
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.partrot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 2
push.v [array]self.party
add.v.v
push.v self.x
pushi.e -1
pushi.e 2
push.v [array]self.partx
add.v.v
push.v self.image_index
pushi.e 294
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 3
push.v [array]self.partrot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 3
push.v [array]self.party
add.v.v
push.v self.x
pushi.e -1
pushi.e 3
push.v [array]self.partx
add.v.v
pushglb.v global.faceemotion
pushi.e 293
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [20]

:[4]
pushi.e 1
pop.v.i self.check
push.v self.fakegrav
push.d 0.5
add.d.v
pop.v.v self.fakegrav
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [10]

:[6]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.go
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.party
push.v self.y
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 25
sub.i.v
cmp.v.v LT
bf [8]

:[7]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.party
push.v self.fakegrav
add.v.v
pop.i.v [array]self.party
b [9]

:[8]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
sub.i.v
push.v self.y
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.party
push.v self.check
pushi.e 1
add.i.v
pop.v.v self.check
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.go

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[10]
pushi.e -1
pushi.e 0
push.v [array]self.go
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.partx
pushi.e 2
add.i.v
pop.i.v [array]self.partx
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.partrot
pushi.e 2
add.i.v
pop.i.v [array]self.partrot

:[12]
pushi.e -1
pushi.e 1
push.v [array]self.go
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.partx
pushi.e 4
add.i.v
pop.i.v [array]self.partx
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.partrot
pushi.e 5
add.i.v
pop.i.v [array]self.partrot

:[14]
pushi.e -1
pushi.e 2
push.v [array]self.go
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.partx
pushi.e 1
sub.i.v
pop.i.v [array]self.partx
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.partrot
pushi.e 3
sub.i.v
pop.i.v [array]self.partrot

:[16]
pushi.e -1
pushi.e 3
push.v [array]self.go
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e -1
pushi.e 3
dup.i 1
push.v [array]self.partx
pushi.e 3
sub.i.v
pop.i.v [array]self.partx
pushi.e -1
pushi.e 3
dup.i 1
push.v [array]self.partrot
pushi.e 9
sub.i.v
pop.i.v [array]self.partrot

:[18]
push.v self.check
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
pushi.e 3
pop.v.i self.mode

:[20]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [end]

:[21]
push.v self.dingus
pushi.e 1
add.i.v
pop.v.v self.dingus
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [24]

:[23]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.partx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.partx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.opartx
sub.v.v
pushi.e 4
conv.i.d
div.d.v
sub.v.v
pop.i.v [array]self.partx
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.party
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.party
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.oparty
sub.v.v
pushi.e 4
conv.i.d
div.d.v
sub.v.v
pop.i.v [array]self.party
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.partrot
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.opartrot
sub.v.v
pushi.e 4
conv.i.d
div.d.v
sub.v.v
pop.i.v [array]self.partrot
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[24]
push.v self.dingus
pushi.e 20
cmp.i.v GT
bf [end]

:[25]
pushi.e 0
pop.v.i self.dingus
pushi.e 0
pop.v.i self.mode
pushi.e 0
pop.v.i self.check

:[end]