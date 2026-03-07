.localvar 0 arguments

:[0]
push.v self.bb
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.bb

:[2]
push.v self.cc
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.cc

:[4]
push.v self.dd
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.dd

:[6]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.dd
push.v self.cc
push.v self.bb
call.i scr_fx_waver_scanline(argc=3)
popz.v
b [9]

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.mega
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
push.v self.cc
pushi.e 1
add.i.v
pop.v.v self.cc
push.v self.image_alpha
push.d 0.03
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [12]

:[11]
pushi.e 4
pop.v.i self.mega

:[12]
push.v self.mega
pushi.e 2
cmp.i.v EQ
bf [end]

:[13]
push.v self.cc
pushi.e 1
cmp.i.v GT
bf [15]

:[14]
push.v self.cc
pushi.e 1
sub.i.v
pop.v.v self.cc

:[15]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [17]

:[16]
push.v self.image_alpha
push.d 0.03
add.d.v
pop.v.v self.image_alpha

:[17]
push.v self.cc
pushi.e 1
cmp.i.v LTE
bf [end]

:[18]
pushi.e 0
pop.v.i self.mega
pushi.e 0
pop.v.i self.on
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 90
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]