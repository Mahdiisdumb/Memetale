.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.buffer
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 2
pop.v.i self.buffer

:[5]
push.v self.buffer
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
pop.v.i self.buffer

:[10]
pushi.e 1
pop.v.i global.interact
push.v self.buffer
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]