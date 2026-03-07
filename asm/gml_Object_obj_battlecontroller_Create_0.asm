.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i SCR_BORDERSETUP(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_battlegroup(argc=5)
popz.v
pushi.e -1
pop.v.i global.mercyuse
pushi.e 1
pop.v.i global.inbattle
pushi.e 0
pop.v.i global.itemused
pushi.e 0
pushi.e -5
pushi.e 271
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.runaway
pushi.e -5
pushi.e 0
push.v [array]global.msg
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushglb.v global.actfirst
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.extraintro
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight
pushi.e 1
pop.v.i global.typer
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v

:[5]
pushi.e 0
pop.v.i global.turn
pushi.e -1
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.won
pushi.e 0
pop.v.i global.heard
push.s "%%%"@16
pop.v.s global.tmsg
pushglb.v global.lv
pushi.e 20
cmp.i.v GT
bf [7]

:[6]
pushi.e 20
pop.v.i global.lv

:[7]
pushi.e 16
pushglb.v global.lv
pushi.e 4
mul.i.v
add.v.i
pop.v.v global.maxhp
pushglb.v global.hp
pushglb.v global.maxhp
pushi.e 15
add.i.v
cmp.v.v GT
bf [9]

:[8]
pushglb.v global.maxhp
pushi.e 15
add.i.v
pop.v.v global.hp

:[9]
pushi.e 8
pushglb.v global.lv
pushi.e 2
mul.i.v
add.v.i
pop.v.v global.at
pushi.e 9
pushglb.v global.lv
pushi.e 4
conv.i.d
div.d.v
call.i ceil(argc=1)
add.v.i
pop.v.v global.df
pushglb.v global.lv
pushi.e 20
cmp.i.v EQ
bf [11]

:[10]
pushi.e 30
pop.v.i global.at
pushi.e 30
pop.v.i global.df
pushi.e 99
pop.v.i global.maxhp

:[11]
pushglb.v global.at
pop.v.v self.tempat
pushglb.v global.df
pop.v.v self.tempdf
pushglb.v global.sp
pop.v.v self.tempspd
pushi.e 0
pop.v.i self.active
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.healed
pushi.e 1
pop.v.i self.drawrect
pushi.e 1
pop.v.i self.drawbinfo
pushi.e 0
pop.v.i self.rearrange
pushi.e 0
pop.v.i self.suppress_border
pushglb.v global.screen_border_active
conv.v.b
bf [end]

:[12]
pushglb.v global.battlegroup
pushi.e 100
cmp.i.v EQ
bt [16]

:[13]
pushglb.v global.battlegroup
pushi.e 101
cmp.i.v EQ
bt [16]

:[14]
pushglb.v global.battlegroup
pushi.e 255
cmp.i.v EQ
bt [16]

:[15]
pushglb.v global.battlegroup
pushi.e 256
cmp.i.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [end]

:[18]
pushi.e 1
pop.v.i self.suppress_border
pushi.e 0
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v

:[end]