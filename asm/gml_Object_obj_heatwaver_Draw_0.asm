.localvar 0 arguments

:[0]
push.v 760.x
pop.v.v self.x
push.v 760.y
pop.v.v self.y
push.v 761.x
pop.v.v self.xa
push.v 762.y
pop.v.v self.ya
push.v self.drawngr
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.gr
call.i sprite_delete(argc=1)
popz.v

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.ya
push.v self.y
sub.v.v
push.v self.xa
push.v self.x
sub.v.v
push.v self.y
push.v self.x
call.i sprite_create_from_screen_x(argc=8)
pop.v.v self.gr
push.v self.gr
pop.v.v self.sprite_index
push.v self.cfactor
push.v self.sprite_height
pushi.e 50
conv.i.d
div.d.v
call.i scr_fx_waver(argc=2)
popz.v
pushi.e 1
pop.v.i self.drawngr

:[end]