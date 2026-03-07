.localvar 0 arguments

:[0]
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.part
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
pushi.e 4
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.part
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.x
pushi.e 52
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.part
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 78
add.i.v
push.v self.x
pushi.e 148
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.part
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 120
add.i.v
push.v self.x
pushi.e 78
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.part
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 78
add.i.v
pushi.e 12
sub.i.v
push.v self.x
pushi.e 12
add.i.v
pushi.e 70
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.part
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 154
add.i.v
push.v self.x
pushi.e 78
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 6
pop.v.v [array]self.part
pushi.e 0
pop.v.i self.ydiff
pushi.e 0
pop.v.i self.xdiff
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.air
pushi.e -1
pushi.e 0
push.v [array]self.part
pop.v.v self.head
pushi.e 302
push.v self.head
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -1
pushi.e 1
push.v [array]self.part
pop.v.v self.hair
pushi.e 301
push.v self.hair
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -1
pushi.e 2
push.v [array]self.part
pop.v.v self.armor
pushi.e 305
push.v self.armor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -1
pushi.e 4
push.v [array]self.part
pop.v.v self.pants
pushi.e 306
push.v self.pants
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -1
pushi.e 5
push.v [array]self.part
pop.v.v self.larm
pushi.e 307
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -1
pushi.e 3
push.v [array]self.part
pop.v.v self.rarm
pushi.e 308
push.v self.rarm
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -1
pushi.e 6
push.v [array]self.part
pop.v.v self.legs
pushi.e 300
push.v self.legs
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [3]

:[2]
push.v self.depth
push.v self.i
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.d 0.25
push.v self.hair
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i self.movetype
pushi.e 0
pop.v.i self.jumpno
pushi.e 0
pop.v.i self.slashno
pushi.e 0
pop.v.i self.fadeout

:[end]