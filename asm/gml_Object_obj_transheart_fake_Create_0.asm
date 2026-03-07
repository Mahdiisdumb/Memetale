.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pop.v.v self.yy
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.mode
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.clapper
pushi.e 0
pop.v.i self.claps
pushglb.v global.transtype
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.clapper
push.v self.xx
pushi.e 160
add.i.v
pushi.e 3
sub.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 211
add.i.v
pushi.e 1
add.i.v
pop.v.v self.mychoicey
pushi.e 106
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
pushglb.v global.transtype
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2364
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.v self.xx
pushi.e 110
add.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 100
add.i.v
pop.v.v self.mychoicey
push.v self.mychoicex
pushi.e 30
add.i.v
pop.v.v self.x
push.v self.mychoicey
pushi.e 20
sub.i.v
pop.v.v self.y

:[4]
pushglb.v global.transtype
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2364
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
push.v self.xx
pushi.e 210
add.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 100
add.i.v
pop.v.v self.mychoicey
push.v self.mychoicex
pushi.e 30
sub.i.v
pop.v.v self.x
push.v self.mychoicey
pushi.e 20
sub.i.v
pop.v.v self.y

:[6]
pushglb.v global.transtype
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2364
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_index
push.v self.xx
pushi.e 90
add.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 60
add.i.v
pop.v.v self.mychoicey
push.v self.mychoicex
pushi.e 30
add.i.v
pop.v.v self.x
push.v self.mychoicey
pop.v.v self.y

:[8]
pushglb.v global.transtype
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 2364
pop.v.i self.sprite_index
pushi.e 3
pop.v.i self.image_index
push.v self.xx
pushi.e 230
add.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 60
add.i.v
pop.v.v self.mychoicey
push.v self.mychoicex
pushi.e 30
sub.i.v
pop.v.v self.x
push.v self.mychoicey
pop.v.v self.y

:[10]
pushglb.v global.transtype
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 2364
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.image_index
push.v self.xx
pushi.e 110
add.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 20
add.i.v
pop.v.v self.mychoicey
push.v self.mychoicex
pushi.e 30
add.i.v
pop.v.v self.x
push.v self.mychoicey
pushi.e 20
add.i.v
pop.v.v self.y

:[12]
pushglb.v global.transtype
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2364
pop.v.i self.sprite_index
pushi.e 5
pop.v.i self.image_index
push.v self.xx
pushi.e 210
add.i.v
pop.v.v self.mychoicex
push.v self.yy
pushi.e 20
add.i.v
pop.v.v self.mychoicey
push.v self.mychoicex
pushi.e 30
sub.i.v
pop.v.v self.x
push.v self.mychoicey
pushi.e 20
add.i.v
pop.v.v self.y

:[14]
push.v self.clapper
pushi.e 1
cmp.i.v EQ
bf [end]

:[15]
push.v self.mychoicex
pushi.e 4
sub.i.v
pop.v.v self.mychoicex
push.v self.xx
pushi.e 4
sub.i.v
pop.v.v self.xx
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]