.localvar 0 arguments

:[0]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
call.i floor(argc=1)
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con
pushi.e 11
cmp.i.v EQ
bt [2]

:[1]
push.v self.con
pushi.e 12
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
push.v self.whited
push.d 0.01
add.d.v
pop.v.v self.whited
push.v self.whited
pushi.e 1
cmp.i.v GTE
bf [6]

:[5]
push.v self.con
pushi.e 11
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 12
pop.v.i self.con
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[9]
push.v self.whited
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.whited
pushi.e 2
cmp.i.v GTE
bf [end]

:[10]
pushi.e 1688
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 13
pop.v.i self.con
pushi.e 1689
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]