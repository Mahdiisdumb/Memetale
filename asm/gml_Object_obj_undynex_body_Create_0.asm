.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.eyetimer
pushi.e 0
pop.v.i self.eye_on
pushi.e 0
pop.v.i self.slashno
pushi.e 0
pop.v.i self.movetype
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 78
add.i.v
push.v self.x
pushi.e 64
add.i.v
call.i instance_create(argc=3)
pop.v.v self.larm
pushi.e 331
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 7
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
pop.v.i self.arm_v
pushi.e 0
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i self.facetype
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.pause
pushi.e 0
pop.v.i self.shakify

:[end]