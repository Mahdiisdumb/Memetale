.localvar 0 arguments
.localvar 1 textscale 10492

:[0]
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
push.d 1.5
pop.v.d local.textscale
b [3]

:[2]
pushi.e 2
pop.v.i local.textscale

:[3]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
push.d 0.9
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.v self.string1
push.v self.wy
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.wx
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.d 0.7
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.v self.string1
push.v self.wy
pushi.e 3
sub.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.wx
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 2
pop.v.i self.i
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
push.d 0.7
push.v self.i
push.d 0.1
mul.d.v
sub.v.d
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.v self.string1
push.v self.wy
push.v self.i
pushi.e 4
mul.i.v
sub.v.v
push.v self.i
pushi.e 8
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.wx
push.v self.i
pushi.e 4
mul.i.v
sub.v.v
push.v self.i
pushi.e 8
mul.i.v
call.i random(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [5]

:[6]
popz.i

:[end]