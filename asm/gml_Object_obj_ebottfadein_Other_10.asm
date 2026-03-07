.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [end]

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.yy
push.v self.n_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -10
push.v self.yy
add.v.i
push.v self.xx
pushi.e 10
sub.i.v
push.v self.i
pushi.e 200
mul.i.v
add.v.v
push.v self.n_index
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2309
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.n_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 190
push.v self.yy
add.v.i
push.v self.xx
pushi.e 10
sub.i.v
push.v self.i
pushi.e 200
mul.i.v
add.v.v
push.v self.n_index
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2309
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.n_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 390
push.v self.yy
add.v.i
push.v self.xx
pushi.e 10
sub.i.v
push.v self.i
pushi.e 200
mul.i.v
add.v.v
push.v self.n_index
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2309
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]