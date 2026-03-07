.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.yy
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.timertime
pushi.e 1
sub.i.v
pop.v.v self.timertime
push.v self.timertime
pushi.e 300
cmp.i.v LT
bf [end]

:[1]
push.v self.timertime
push.d 0.25
add.d.v
pop.v.v self.timertime

:[end]