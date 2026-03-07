.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.x
push.v self.x
push.v self.xprevious
sub.v.v
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.xprev2
push.v self.y
push.v self.y
push.v self.yprevious
sub.v.v
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.yprev2
push.d 0.3
conv.d.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.d 0.6
sub.d.v
push.v self.image_xscale
push.d 0.6
sub.d.v
push.v self.yprev2
push.v self.xprev2
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.6
conv.d.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.d 0.3
sub.d.v
push.v self.image_xscale
push.d 0.3
sub.d.v
push.v self.yprevious
push.v self.xprevious
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]