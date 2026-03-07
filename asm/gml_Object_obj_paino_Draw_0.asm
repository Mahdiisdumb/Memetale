.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 6
push.v [array]self.pp
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
pushi.e -1
pushi.e 5
push.v [array]self.pp
pushi.e 4
cmp.i.v EQ
bf [8]

:[2]
pushi.e -1
pushi.e 4
push.v [array]self.pp
pushi.e 3
cmp.i.v EQ
bf [8]

:[3]
pushi.e -1
pushi.e 3
push.v [array]self.pp
pushi.e 0
cmp.i.v EQ
bf [8]

:[4]
pushi.e -1
pushi.e 2
push.v [array]self.pp
pushi.e 2
cmp.i.v EQ
bf [8]

:[5]
pushi.e -1
pushi.e 1
push.v [array]self.pp
pushi.e 2
cmp.i.v EQ
bf [8]

:[6]
pushi.e -1
pushi.e 0
push.v [array]self.pp
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.won

:[8]
pushi.e -1
pushi.e 7
push.v [array]self.pp
pushi.e 0
cmp.i.v EQ
bf [17]

:[9]
pushi.e -1
pushi.e 6
push.v [array]self.pp
pushi.e 4
cmp.i.v EQ
bf [17]

:[10]
pushi.e -1
pushi.e 5
push.v [array]self.pp
pushi.e 3
cmp.i.v EQ
bf [17]

:[11]
pushi.e -1
pushi.e 4
push.v [array]self.pp
pushi.e 0
cmp.i.v EQ
bf [17]

:[12]
pushi.e -1
pushi.e 3
push.v [array]self.pp
pushi.e 2
cmp.i.v EQ
bf [17]

:[13]
pushi.e -1
pushi.e 2
push.v [array]self.pp
pushi.e 0
cmp.i.v EQ
bf [17]

:[14]
pushi.e -1
pushi.e 1
push.v [array]self.pp
pushi.e 2
cmp.i.v EQ
bf [17]

:[15]
pushi.e -1
pushi.e 0
push.v [array]self.pp
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.won

:[17]
pushi.e -1
pushi.e 7
push.v [array]self.pp
pushi.e 0
cmp.i.v EQ
bf [26]

:[18]
pushi.e -1
pushi.e 6
push.v [array]self.pp
pushi.e 4
cmp.i.v EQ
bf [26]

:[19]
pushi.e -1
pushi.e 5
push.v [array]self.pp
pushi.e 3
cmp.i.v EQ
bf [26]

:[20]
pushi.e -1
pushi.e 4
push.v [array]self.pp
pushi.e 0
cmp.i.v EQ
bf [26]

:[21]
pushi.e -1
pushi.e 3
push.v [array]self.pp
pushi.e 2
cmp.i.v EQ
bf [26]

:[22]
pushi.e -1
pushi.e 2
push.v [array]self.pp
pushi.e 1
cmp.i.v EQ
bf [26]

:[23]
pushi.e -1
pushi.e 1
push.v [array]self.pp
pushi.e 2
cmp.i.v EQ
bf [26]

:[24]
pushi.e -1
pushi.e 0
push.v [array]self.pp
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.won

:[26]
pushi.e -1
pushi.e 12
push.v [array]self.pp
pushi.e 4
cmp.i.v EQ
bf [40]

:[27]
pushi.e -1
pushi.e 11
push.v [array]self.pp
pushi.e 8
cmp.i.v EQ
bf [40]

:[28]
pushi.e -1
pushi.e 10
push.v [array]self.pp
pushi.e 7
cmp.i.v EQ
bf [40]

:[29]
pushi.e -1
pushi.e 9
push.v [array]self.pp
pushi.e 4
cmp.i.v EQ
bf [40]

:[30]
pushi.e -1
pushi.e 8
push.v [array]self.pp
pushi.e 6
cmp.i.v EQ
bf [40]

:[31]
pushi.e -1
pushi.e 7
push.v [array]self.pp
pushi.e 6
cmp.i.v EQ
bf [40]

:[32]
pushi.e -1
pushi.e 6
push.v [array]self.pp
pushi.e 7
cmp.i.v EQ
bf [40]

:[33]
pushi.e -1
pushi.e 5
push.v [array]self.pp
pushi.e 4
cmp.i.v EQ
bf [40]

:[34]
pushi.e -1
pushi.e 4
push.v [array]self.pp
pushi.e 7
cmp.i.v EQ
bf [40]

:[35]
pushi.e -1
pushi.e 3
push.v [array]self.pp
pushi.e 4
cmp.i.v EQ
bf [40]

:[36]
pushi.e -1
pushi.e 2
push.v [array]self.pp
pushi.e 6
cmp.i.v EQ
bf [40]

:[37]
pushi.e -1
pushi.e 1
push.v [array]self.pp
pushi.e 6
cmp.i.v EQ
bf [40]

:[38]
pushi.e -1
pushi.e 0
push.v [array]self.pp
pushi.e 7
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.won

:[40]
push.v self.oldmode
pushi.e 1
cmp.i.v EQ
bf [61]

:[41]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 200
conv.i.v
pushi.e 220
conv.i.v
pushi.e 48
conv.i.v
pushi.e 78
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 198
conv.i.v
pushi.e 218
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
pop.v.i self.i

:[42]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [60]

:[43]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.played
pushi.e 0
cmp.i.v GT
bf [45]

:[44]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[45]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.justplayed
pushi.e 0
cmp.i.v GT
bf [47]

:[46]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[47]
pushi.e 150
conv.i.v
pushi.e 100
push.v self.i
pushi.e 10
mul.i.v
pushi.e 8
add.i.v
add.v.i
pushi.e 100
conv.i.v
pushi.e 100
push.v self.i
pushi.e 10
mul.i.v
add.v.i
pushi.e 1
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.i
pushi.e 0
cmp.i.v GT
bf [49]

:[48]
push.v self.i
pushi.e 5
cmp.i.v LT
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 158
conv.i.v
pushi.e 100
push.v self.i
pushi.e 10
mul.i.v
add.v.i
pushi.e 2
add.i.v
push.v self.i
pushi.e 1
sub.i.v
pushi.e 873
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[52]
push.v self.num
push.v self.i
cmp.v.v EQ
bt [54]

:[53]
push.v self.i
push.v self.num
pushi.e 5
sub.i.v
cmp.v.v EQ
b [55]

:[54]
push.e 1

:[55]
bf [57]

:[56]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 151
conv.i.v
pushi.e 100
push.v self.i
pushi.e 10
mul.i.v
pushi.e 9
add.i.v
add.v.i
pushi.e 99
conv.i.v
pushi.e 100
push.v self.i
pushi.e 10
mul.i.v
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 160
conv.i.v
pushi.e 100
push.v self.i
pushi.e 10
mul.i.v
add.v.i
pushi.e 4
add.i.v
call.i draw_circle(argc=4)
popz.v

:[57]
push.v self.i
push.v self.num
pushi.e 5
add.i.v
cmp.v.v EQ
bf [59]

:[58]
push.i 8421376
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 151
conv.i.v
pushi.e 100
push.v self.i
pushi.e 10
mul.i.v
pushi.e 9
add.i.v
add.v.i
pushi.e 99
conv.i.v
pushi.e 100
push.v self.i
pushi.e 10
mul.i.v
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 160
conv.i.v
pushi.e 100
push.v self.i
pushi.e 10
mul.i.v
add.v.i
pushi.e 4
add.i.v
call.i draw_circle(argc=4)
popz.v

:[59]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [42]

:[60]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.s "X - Quit"@50481
conv.s.v
pushi.e 60
conv.i.v
pushi.e 120
conv.i.v
call.i draw_text(argc=3)
popz.v

:[61]
push.v self.oldmode
pushi.e 1
cmp.i.v NEQ
bf [84]

:[62]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [64]

:[63]
pushi.e 27
conv.i.v
pushi.e 44
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1024
conv.i.v
call.i scr_getsprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[64]
push.v self.num
pushi.e 0
cmp.i.v EQ
bf [68]

:[65]
pushi.e 0
pop.v.i self.bonus
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.justplayed
pushi.e 0
cmp.i.v GT
bf [67]

:[66]
pushi.e 1
pop.v.i self.bonus

:[67]
pushi.e 58
conv.i.v
pushi.e 43
conv.i.v
pushi.e 1
push.v self.bonus
add.v.i
pushi.e 1021
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[68]
push.v self.num
pushi.e 1
cmp.i.v EQ
bf [72]

:[69]
pushi.e 0
pop.v.i self.bonus
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.justplayed
pushi.e 0
cmp.i.v GT
bf [71]

:[70]
pushi.e 1
pop.v.i self.bonus

:[71]
pushi.e 58
conv.i.v
pushi.e 54
conv.i.v
pushi.e 1
push.v self.bonus
add.v.i
pushi.e 1020
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[72]
push.v self.num
pushi.e 2
cmp.i.v EQ
bf [76]

:[73]
pushi.e 0
pop.v.i self.bonus
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.justplayed
pushi.e 0
cmp.i.v GT
bf [75]

:[74]
pushi.e 1
pop.v.i self.bonus

:[75]
pushi.e 55
conv.i.v
pushi.e 70
conv.i.v
pushi.e 1
push.v self.bonus
add.v.i
pushi.e 1019
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[76]
push.v self.num
pushi.e 3
cmp.i.v EQ
bf [80]

:[77]
pushi.e 0
pop.v.i self.bonus
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.justplayed
pushi.e 0
cmp.i.v GT
bf [79]

:[78]
pushi.e 1
pop.v.i self.bonus

:[79]
pushi.e 58
conv.i.v
pushi.e 81
conv.i.v
pushi.e 1
push.v self.bonus
add.v.i
pushi.e 1022
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[80]
push.v self.num
pushi.e 4
cmp.i.v EQ
bf [84]

:[81]
pushi.e 0
pop.v.i self.bonus
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.justplayed
pushi.e 0
cmp.i.v GT
bf [83]

:[82]
pushi.e 1
pop.v.i self.bonus

:[83]
pushi.e 55
conv.i.v
pushi.e 97
conv.i.v
pushi.e 1
push.v self.bonus
add.v.i
pushi.e 1023
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[84]
push.v self.won
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
push.v self.wonned
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [end]

:[88]
pushi.e -5
pushi.e 356
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[89]
pushi.e 25
pop.v.i self.buffer
pushi.e 1
pop.v.i self.wonned
pushi.e 20
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]