.localvar 0 arguments

:[0]
pushi.e -1
pop.v.i self.image_xscale
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
pop.v.v self.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pushi.e 36
sub.i.v
pop.v.v self.y
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.visible
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 60
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 60
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 170
pop.v.i global.turntimer

:[end]