.localvar 0 arguments

:[0]
pushi.e -4
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=2)
pop.v.v self.anger
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v self.sp
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.j

:[1]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [6]

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [5]

:[4]
pushi.e 1631
conv.i.v
push.v self.sprite_width
neg.v
pushi.e 2
mul.i.v
push.v self.sprite_width
push.v self.j
mul.v.v
add.v.v
push.v self.sprite_width
neg.v
pushi.e 4
mul.i.v
push.v self.sprite_width
push.v self.i
mul.v.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.kn
push.v self.kn
conv.v.i
push.v [stacktop]self.xstart
push.v self.x
sub.v.v
push.v self.kn
conv.v.i
pop.v.v [stacktop]self.relx
push.v self.kn
conv.v.i
push.v [stacktop]self.ystart
push.v self.y
sub.v.v
push.v self.kn
conv.v.i
pop.v.v [stacktop]self.rely
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [1]

:[6]
pushi.e 1590
pushenv [8]

:[7]
push.v self.soulmax
pushi.e 90
add.i.v
pop.v.v self.soulmax

:[8]
popenv [7]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.con
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index

:[end]