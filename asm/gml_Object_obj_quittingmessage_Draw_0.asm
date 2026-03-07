.localvar 0 arguments
.localvar 1 scale 1540

:[0]
pushi.e 1575
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_wview
pushi.e 640
conv.i.d
div.d.v
pop.v.v local.scale
push.v 1575.quit
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
b [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.image_alpha
push.d 0.9
cmp.d.v LT
bf [end]

:[7]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[end]