.localvar 0 arguments
.localvar 1 halfsize 6064
.localvar 2 n 6065
.localvar 3 ch 6066
.localvar 4 myletter 6067
.localvar 5 newtyper 6068
.localvar 6 sym 6069
.localvar 7 sym_s 6070
.localvar 8 icontype 6071
.localvar 9 sprite 6072
.localvar 10 spritex 6073
.localvar 11 spritey 6074
.localvar 12 icon_scale 6075
.localvar 13 choiceindex 6076
.localvar 14 nextch 6077
.localvar 15 letterx 6078
.localvar 16 offsetx 6079
.localvar 17 offsety 6080
.localvar 18 halfscale 6081
.localvar 19 unit 6082
.localvar 20 lastch 6083
.localvar 21 angle 6084
.localvar 22 display_scale 6085
.localvar 23 finalx 6086
.localvar 24 finaly 6087

:[0]
push.v self.vtext
conv.v.b
bf [2]

:[1]
push.v self.writingxend
push.v self.vspacing
sub.v.v
pop.v.v self.myx
b [3]

:[2]
push.v self.writingx
pop.v.v self.myx

:[3]
push.v self.writingy
pop.v.v self.myy
pushi.e 0
pop.v.i local.halfsize
pushi.e 1
pop.v.i local.n

:[4]
pushloc.v local.n
push.v self.stringpos
cmp.v.v LTE
bf [end]

:[5]
pushloc.v local.n
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.ch
push.s ""@36
pop.v.s local.myletter
pushloc.v local.ch
push.s "^"@49964
cmp.s.v EQ
bf [7]

:[6]
pushloc.v local.n
pushi.e 1
add.i.v
push.v self.originalstring
call.i string_char_at(argc=2)
push.s "0"@3159
cmp.s.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
b [316]

:[10]
pushloc.v local.ch
push.s "\\"@49965
cmp.s.v EQ
bf [127]

:[11]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
pushloc.v local.n
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.ch
pushloc.v local.ch
push.s "R"@49974
cmp.s.v EQ
bf [13]

:[12]
pushi.e 255
pop.v.i self.mycolor
b [126]

:[13]
pushloc.v local.ch
push.s "G"@5047
cmp.s.v EQ
bf [15]

:[14]
push.i 65280
pop.v.i self.mycolor
b [126]

:[15]
pushloc.v local.ch
push.s "W"@49975
cmp.s.v EQ
bf [17]

:[16]
push.i 16777215
pop.v.i self.mycolor
b [126]

:[17]
pushloc.v local.ch
push.s "Y"@49976
cmp.s.v EQ
bf [19]

:[18]
push.i 65535
pop.v.i self.mycolor
b [126]

:[19]
pushloc.v local.ch
push.s "X"@6305
cmp.s.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.mycolor
b [126]

:[21]
pushloc.v local.ch
push.s "B"@34823
cmp.s.v EQ
bf [23]

:[22]
push.i 16711680
pop.v.i self.mycolor
b [126]

:[23]
pushloc.v local.ch
push.s "O"@49977
cmp.s.v EQ
bf [25]

:[24]
push.i 4235519
pop.v.i self.mycolor
b [126]

:[25]
pushloc.v local.ch
push.s "L"@49978
cmp.s.v EQ
bf [27]

:[26]
push.i 16629774
pop.v.i self.mycolor
b [126]

:[27]
pushloc.v local.ch
push.s "P"@49979
cmp.s.v EQ
bf [29]

:[28]
push.i 16711935
pop.v.i self.mycolor
b [126]

:[29]
pushloc.v local.ch
push.s "p"@2350
cmp.s.v EQ
bf [31]

:[30]
push.i 13941759
pop.v.i self.mycolor
b [126]

:[31]
pushloc.v local.ch
push.s "C"@6306
cmp.s.v EQ
bf [33]

:[32]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [126]

:[33]
pushloc.v local.ch
push.s "M"@49968
cmp.s.v EQ
bf [35]

:[34]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
pushloc.v local.n
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.ch
pushloc.v local.ch
call.i real(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.flag
b [126]

:[35]
pushloc.v local.ch
push.s "E"@47762
cmp.s.v EQ
bf [37]

:[36]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
pushloc.v local.n
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.ch
pushloc.v local.ch
call.i real(argc=1)
pop.v.v global.faceemotion
b [126]

:[37]
pushloc.v local.ch
push.s "F"@47599
cmp.s.v EQ
bf [39]

:[38]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
pushloc.v local.n
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.ch
pushloc.v local.ch
call.i real(argc=1)
pop.v.v global.facechoice
pushi.e 1
pop.v.i global.facechange
b [126]

:[39]
pushloc.v local.ch
push.s "S"@49966
cmp.s.v EQ
bf [41]

:[40]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
b [126]

:[41]
pushloc.v local.ch
push.s "T"@49969
cmp.s.v EQ
bf [72]

:[42]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
pushloc.v local.n
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.newtyper
pushloc.v local.newtyper
push.s "-"@47113
cmp.s.v EQ
bf [44]

:[43]
pushi.e 1
pop.v.i local.halfsize
b [71]

:[44]
pushloc.v local.newtyper
push.s "+"@48708
cmp.s.v EQ
bf [46]

:[45]
pushi.e 0
pop.v.i local.halfsize
b [71]

:[46]
pushloc.v local.newtyper
push.s "T"@49969
cmp.s.v EQ
bf [48]

:[47]
pushi.e 4
pop.v.i global.typer

:[48]
pushloc.v local.newtyper
push.s "t"@3022
cmp.s.v EQ
bf [50]

:[49]
pushi.e 48
pop.v.i global.typer

:[50]
pushloc.v local.newtyper
push.s "0"@3159
cmp.s.v EQ
bf [52]

:[51]
pushi.e 5
pop.v.i global.typer

:[52]
pushloc.v local.newtyper
push.s "S"@49966
cmp.s.v EQ
bf [54]

:[53]
pushi.e 10
pop.v.i global.typer

:[54]
pushloc.v local.newtyper
push.s "F"@47599
cmp.s.v EQ
bf [56]

:[55]
pushi.e 16
pop.v.i global.typer

:[56]
pushloc.v local.newtyper
push.s "s"@797
cmp.s.v EQ
bf [58]

:[57]
pushi.e 17
pop.v.i global.typer

:[58]
pushloc.v local.newtyper
push.s "P"@49979
cmp.s.v EQ
bf [60]

:[59]
pushi.e 18
pop.v.i global.typer

:[60]
pushloc.v local.newtyper
push.s "M"@49968
cmp.s.v EQ
bf [62]

:[61]
pushi.e 27
pop.v.i global.typer

:[62]
pushloc.v local.newtyper
push.s "U"@49981
cmp.s.v EQ
bf [64]

:[63]
pushi.e 37
pop.v.i global.typer

:[64]
pushloc.v local.newtyper
push.s "A"@6301
cmp.s.v EQ
bf [66]

:[65]
pushi.e 47
pop.v.i global.typer

:[66]
pushloc.v local.newtyper
push.s "a"@2906
cmp.s.v EQ
bf [68]

:[67]
pushi.e 60
pop.v.i global.typer

:[68]
pushloc.v local.newtyper
push.s "R"@49974
cmp.s.v EQ
bf [70]

:[69]
pushi.e 76
pop.v.i global.typer

:[70]
pushglb.v global.typer
call.i SCR_TEXTTYPE(argc=1)
popz.v
pushi.e 1
pop.v.i global.facechange

:[71]
b [126]

:[72]
pushloc.v local.ch
push.s "z"@47111
cmp.s.v EQ
bf [76]

:[73]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
pushloc.v local.n
push.v self.originalstring
call.i string_char_at(argc=2)
call.i real(argc=1)
pop.v.v local.sym
pushloc.v local.sym
pushi.e 4
cmp.i.v EQ
bf [75]

:[74]
pushi.e 862
pop.v.i local.sym_s
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
push.v self.myy
pushi.e 10
add.i.v
push.v self.shake
call.i random(argc=1)
push.v self.shake
pushi.e 2
conv.i.d
div.d.v
sub.v.v
add.v.v
push.v self.myx
push.v self.shake
call.i random(argc=1)
push.v self.shake
pushi.e 2
conv.i.d
div.d.v
sub.v.v
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.sym_s
call.i draw_sprite_ext(argc=9)
popz.v

:[75]
b [126]

:[76]
pushloc.v local.ch
push.s "*"@49970
cmp.s.v EQ
bf [118]

:[77]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
pushloc.v local.n
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.ch
pushi.e 0
pop.v.i local.icontype
push.v self.myfont
pushi.e 9
cmp.i.v EQ
bt [79]

:[78]
push.v self.myfont
pushi.e 16
cmp.i.v EQ
b [80]

:[79]
push.e 1

:[80]
bf [82]

:[81]
pushi.e 1
pop.v.i local.icontype

:[82]
pushloc.v local.icontype
pushloc.v local.ch
call.i scr_getbuttonsprite(argc=2)
pop.v.v local.sprite
pushloc.v local.sprite
pushi.e -4
cmp.i.v NEQ
bf [117]

:[83]
push.v self.myx
pop.v.v local.spritex
push.v self.myy
pop.v.v local.spritey
push.v self.shake
pushi.e 38
cmp.i.v GT
bf [95]

:[84]
push.v self.shake
pushi.e 39
cmp.i.v EQ
bf [86]

:[85]
push.v self.direction
pushi.e 10
add.i.v
pop.v.v self.direction
push.v local.spritex
push.v self.hspeed
add.v.v
pop.v.v local.spritex
push.v local.spritey
push.v self.vspeed
add.v.v
pop.v.v local.spritey
b [94]

:[86]
push.v self.shake
pushi.e 40
cmp.i.v EQ
bf [88]

:[87]
push.v local.spritex
push.v self.hspeed
add.v.v
pop.v.v local.spritex
push.v local.spritey
push.v self.vspeed
add.v.v
pop.v.v local.spritey
b [94]

:[88]
push.v self.shake
pushi.e 41
cmp.i.v EQ
bf [90]

:[89]
push.v self.direction
pushi.e 10
pushloc.v local.n
mul.v.i
add.v.v
pop.v.v self.direction
push.v local.spritex
push.v self.hspeed
add.v.v
pop.v.v local.spritex
push.v local.spritey
push.v self.vspeed
add.v.v
pop.v.v local.spritey
push.v self.direction
pushi.e 10
pushloc.v local.n
mul.v.i
sub.v.v
pop.v.v self.direction
b [94]

:[90]
push.v self.shake
pushi.e 42
cmp.i.v EQ
bf [92]

:[91]
push.v self.direction
pushi.e 20
pushloc.v local.n
mul.v.i
add.v.v
pop.v.v self.direction
push.v local.spritex
push.v self.hspeed
add.v.v
pop.v.v local.spritex
push.v local.spritey
push.v self.vspeed
add.v.v
pop.v.v local.spritey
push.v self.direction
pushi.e 20
pushloc.v local.n
mul.v.i
sub.v.v
pop.v.v self.direction
b [94]

:[92]
push.v self.shake
pushi.e 43
cmp.i.v EQ
bf [94]

:[93]
push.v self.direction
pushi.e 30
pushloc.v local.n
mul.v.i
add.v.v
pop.v.v self.direction
push.v local.spritex
push.v self.hspeed
push.d 0.7
mul.d.v
pushi.e 10
add.i.v
add.v.v
pop.v.v local.spritex
push.v local.spritey
push.v self.vspeed
push.d 0.7
mul.d.v
add.v.v
pop.v.v local.spritey
push.v self.direction
pushi.e 30
pushloc.v local.n
mul.v.i
sub.v.v
pop.v.v self.direction

:[94]
b [97]

:[95]
pushi.e 170
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [97]

:[96]
push.v local.spritex
push.v self.shake
call.i random(argc=1)
push.v self.shake
pushi.e 2
conv.i.d
div.d.v
sub.v.v
add.v.v
pop.v.v local.spritex
push.v local.spritey
push.v self.shake
call.i random(argc=1)
push.v self.shake
pushi.e 2
conv.i.d
div.d.v
sub.v.v
add.v.v
pop.v.v local.spritey

:[97]
pushi.e 1
pop.v.i local.icon_scale
push.v self.myfont
pushi.e 1
cmp.i.v EQ
bt [99]

:[98]
push.v self.myfont
pushi.e 13
cmp.i.v EQ
b [100]

:[99]
push.e 1

:[100]
bf [102]

:[101]
pushi.e 2
pop.v.i local.icon_scale

:[102]
push.v self.myfont
pushi.e 1
cmp.i.v EQ
bt [104]

:[103]
push.v self.myfont
pushi.e 2
cmp.i.v EQ
b [105]

:[104]
push.e 1

:[105]
bf [107]

:[106]
push.v local.spritey
pushi.e 1
pushloc.v local.icon_scale
mul.v.i
add.v.v
pop.v.v local.spritey

:[107]
push.v self.myfont
pushi.e 16
cmp.i.v EQ
bf [109]

:[108]
push.v local.spritex
pushi.e 1
sub.i.v
pop.v.v local.spritex

:[109]
push.v self.myfont
pushi.e 9
cmp.i.v EQ
bf [111]

:[110]
pushloc.v local.icontype
pushi.e 1
cmp.i.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
push.v local.spritey
pushi.e 16
pushloc.v local.sprite
call.i sprite_get_height(argc=1)
sub.v.i
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v local.spritey

:[114]
push.v self.vtext
conv.v.b
bf [116]

:[115]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.icon_scale
pushloc.v local.icon_scale
pushloc.v local.spritey
pushloc.v local.spritex
pushloc.v local.sprite
call.i sprite_get_width(argc=1)
sub.v.v
pushi.e 0
conv.i.v
pushloc.v local.sprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.myy
pushloc.v local.sprite
call.i sprite_get_height(argc=1)
pushi.e 1
add.i.v
pushloc.v local.icon_scale
mul.v.v
add.v.v
pop.v.v self.myy
b [117]

:[116]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.icon_scale
pushloc.v local.icon_scale
pushloc.v local.spritey
pushloc.v local.spritex
pushi.e 0
conv.i.v
pushloc.v local.sprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.myx
pushloc.v local.sprite
call.i sprite_get_width(argc=1)
pushi.e 1
add.i.v
pushloc.v local.icon_scale
mul.v.v
add.v.v
pop.v.v self.myx

:[117]
b [126]

:[118]
pushloc.v local.ch
push.s ">"@49987
cmp.s.v EQ
bf [126]

:[119]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
pushloc.v local.n
push.v self.originalstring
call.i string_char_at(argc=2)
call.i real(argc=1)
pop.v.v local.choiceindex
pushloc.v local.choiceindex
pushi.e 1
cmp.i.v EQ
bf [121]

:[120]
pushi.e 196
pop.v.i self.myx
b [123]

:[121]
pushi.e 100
pop.v.i self.myx
push.v self.myfont
pushi.e 11
cmp.i.v EQ
bf [123]

:[122]
push.v self.myx
pushi.e 11
add.i.v
pop.v.v self.myx

:[123]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_wview
pushi.e 640
cmp.i.v EQ
bf [125]

:[124]
push.v self.myx
pushi.e 2
mul.i.v
pop.v.v self.myx

:[125]
push.v self.myx
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
add.v.v
pop.v.v self.myx

:[126]
b [316]

:[127]
pushloc.v local.ch
push.s "&"@44
cmp.s.v EQ
bf [129]

:[128]
pushi.e 153
conv.i.v
call.i script_execute(argc=1)
popz.v
b [316]

:[129]
pushloc.v local.ch
push.s "/"@12963
cmp.s.v EQ
bf [141]

:[130]
pushi.e 1
pop.v.i self.halt
pushloc.v local.n
pushi.e 1
add.i.v
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.nextch
pushloc.v local.nextch
push.s "%"@2577
cmp.s.v EQ
bf [132]

:[131]
pushi.e 2
pop.v.i self.halt
b [139]

:[132]
pushloc.v local.nextch
push.s "^"@49964
cmp.s.v EQ
bf [134]

:[133]
pushloc.v local.n
pushi.e 2
add.i.v
push.v self.originalstring
call.i string_char_at(argc=2)
push.s "0"@3159
cmp.s.v NEQ
b [135]

:[134]
push.e 0

:[135]
bf [137]

:[136]
pushi.e 4
pop.v.i self.halt
b [139]

:[137]
pushloc.v local.nextch
push.s "*"@49970
cmp.s.v EQ
bf [139]

:[138]
pushi.e 6
pop.v.i self.halt

:[139]
b [end]

:[140]
b [316]

:[141]
pushloc.v local.ch
push.s "%"@2577
cmp.s.v EQ
bf [146]

:[142]
pushloc.v local.n
pushi.e 1
add.i.v
push.v self.originalstring
call.i string_char_at(argc=2)
push.s "%"@2577
cmp.s.v EQ
bf [144]

:[143]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[144]
push.v self.stringno
push.e 1
add.i.v
pop.v.v self.stringno
pushi.e -1
push.v self.stringno
conv.v.i
push.v [array]self.mystring
call.i scr_replace_buttons_pc(argc=1)
pop.v.v self.originalstring
pushi.e 0
pop.v.i self.stringpos
push.v self.writingx
pop.v.v self.myx
push.v self.writingy
pop.v.v self.myy
push.v self.textspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
b [end]

:[145]
b [316]

:[146]
pushloc.v local.n
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.myletter
pushloc.v local.myletter
push.s "^"@49964
cmp.s.v EQ
bf [148]

:[147]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n

:[148]
push.v self.vtext
conv.v.b
not.b
bf [150]

:[149]
push.v self.myx
push.v self.writingxend
cmp.v.v GT
b [151]

:[150]
push.e 0

:[151]
bf [153]

:[152]
pushi.e 153
conv.i.v
call.i script_execute(argc=1)
popz.v

:[153]
push.v self.myx
pop.v.v local.letterx
pushi.e 0
pop.v.i local.offsetx
pushi.e 0
pop.v.i local.offsety
pushi.e 1
pop.v.i local.halfscale
pushloc.v local.halfsize
conv.v.b
bf [157]

:[154]
push.d 0.5
pop.v.d local.halfscale
push.v self.vtext
conv.v.b
bf [156]

:[155]
push.v local.offsetx
push.v self.vspacing
push.d 0.33
mul.d.v
add.v.v
pop.v.v local.offsetx
b [157]

:[156]
push.v local.offsety
push.v self.vspacing
push.d 0.33
mul.d.v
add.v.v
pop.v.v local.offsety

:[157]
pushglb.v global.language
push.s "en"@3390
cmp.s.v EQ
bf [181]

:[158]
pushglb.v global.typer
pushi.e 18
cmp.i.v EQ
bf [180]

:[159]
pushloc.v local.myletter
push.s "l"@3021
cmp.s.v EQ
bt [161]

:[160]
pushloc.v local.myletter
push.s "i"@37
cmp.s.v EQ
b [162]

:[161]
push.e 1

:[162]
bf [164]

:[163]
push.v local.letterx
pushi.e 2
add.i.v
pop.v.v local.letterx

:[164]
pushloc.v local.myletter
push.s "I"@6333
cmp.s.v EQ
bf [166]

:[165]
push.v local.letterx
pushi.e 2
add.i.v
pop.v.v local.letterx

:[166]
pushloc.v local.myletter
push.s "!"@49994
cmp.s.v EQ
bf [168]

:[167]
push.v local.letterx
pushi.e 2
add.i.v
pop.v.v local.letterx

:[168]
pushloc.v local.myletter
push.s "."@32967
cmp.s.v EQ
bf [170]

:[169]
push.v local.letterx
pushi.e 2
add.i.v
pop.v.v local.letterx

:[170]
pushloc.v local.myletter
push.s "S"@49966
cmp.s.v EQ
bf [172]

:[171]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[172]
pushloc.v local.myletter
push.s "?"@49995
cmp.s.v EQ
bf [174]

:[173]
push.v local.letterx
pushi.e 2
add.i.v
pop.v.v local.letterx

:[174]
pushloc.v local.myletter
push.s "D"@6302
cmp.s.v EQ
bf [176]

:[175]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[176]
pushloc.v local.myletter
push.s "A"@6301
cmp.s.v EQ
bf [178]

:[177]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[178]
pushloc.v local.myletter
push.s "'"@49996
cmp.s.v EQ
bf [180]

:[179]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[180]
b [216]

:[181]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [216]

:[182]
push.v self.vtext
conv.v.b
bf [187]

:[183]
push.v self.myfont
pushi.e 15
cmp.i.v EQ
bt [185]

:[184]
push.v self.myfont
pushi.e 16
cmp.i.v EQ
b [186]

:[185]
push.e 1

:[186]
b [188]

:[187]
push.e 0

:[188]
bf [198]

:[189]
push.v self.myy
push.v self.writingy
cmp.v.v EQ
bf [194]

:[190]
pushloc.v local.myletter
push.s "「"@47117
cmp.s.v EQ
bt [192]

:[191]
pushloc.v local.myletter
push.s "『"@49997
cmp.s.v EQ
b [193]

:[192]
push.e 1

:[193]
b [195]

:[194]
push.e 0

:[195]
bf [197]

:[196]
push.v self.myy
pushloc.v local.myletter
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.v self.htextscale
mul.v.v
pushloc.v local.halfscale
mul.v.v
call.i round(argc=1)
sub.v.v
pop.v.v self.myy

:[197]
b [216]

:[198]
push.v self.myfont
pushi.e 14
cmp.i.v EQ
bt [200]

:[199]
push.v self.myfont
pushi.e 13
cmp.i.v EQ
b [201]

:[200]
push.e 1

:[201]
bf [216]

:[202]
push.v self.htextscale
pushloc.v local.halfscale
mul.v.v
pop.v.v local.unit
push.v self.myfont
pushi.e 13
cmp.i.v EQ
bf [204]

:[203]
push.v local.unit
pushi.e 2
mul.i.v
pop.v.v local.unit

:[204]
pushloc.v local.myletter
call.i ord(argc=1)
pushi.e 1024
cmp.i.v LT
bt [206]

:[205]
pushloc.v local.myletter
call.i ord(argc=1)
pushi.e 8211
cmp.i.v EQ
b [207]

:[206]
push.e 1

:[207]
bf [216]

:[208]
pushloc.v local.n
pushi.e 1
cmp.i.v GT
bf [216]

:[209]
pushloc.v local.n
pushi.e 1
sub.i.v
push.v self.originalstring
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.lastch
pushloc.v local.lastch
pushi.e 1024
cmp.i.v GTE
bf [213]

:[210]
pushloc.v local.lastch
push.i 65281
cmp.i.v LT
bf [213]

:[211]
pushloc.v local.lastch
pushi.e 8211
cmp.i.v NEQ
bf [213]

:[212]
pushloc.v local.lastch
pushi.e 12288
cmp.i.v NEQ
b [214]

:[213]
push.e 0

:[214]
bf [216]

:[215]
push.v local.letterx
pushloc.v local.unit
add.v.v
pop.v.v local.letterx

:[216]
push.v self.myfont
call.i scr_setfont(argc=1)
popz.v
push.v self.mycolor
call.i draw_set_color(argc=1)
popz.v
push.v self.vtext
conv.v.b
bf [218]

:[217]
pushi.e -90
pop.v.i local.angle
b [219]

:[218]
pushi.e 0
pop.v.i local.angle

:[219]
push.v self.shake
pushi.e 38
cmp.i.v GT
bf [231]

:[220]
push.v self.shake
pushi.e 39
cmp.i.v EQ
bf [222]

:[221]
push.v self.direction
pushi.e 10
add.i.v
pop.v.v self.direction
push.v local.offsetx
push.v self.hspeed
add.v.v
pop.v.v local.offsetx
push.v local.offsety
push.v self.vspeed
add.v.v
pop.v.v local.offsety
b [230]

:[222]
push.v self.shake
pushi.e 40
cmp.i.v EQ
bf [224]

:[223]
push.v local.offsetx
push.v self.hspeed
add.v.v
pop.v.v local.offsetx
push.v local.offsety
push.v self.vspeed
add.v.v
pop.v.v local.offsety
b [230]

:[224]
push.v self.shake
pushi.e 41
cmp.i.v EQ
bf [226]

:[225]
push.v self.direction
pushi.e 10
pushloc.v local.n
mul.v.i
add.v.v
pop.v.v self.direction
push.v local.offsetx
push.v self.hspeed
add.v.v
pop.v.v local.offsetx
push.v local.offsety
push.v self.vspeed
add.v.v
pop.v.v local.offsety
push.v self.direction
pushi.e 10
pushloc.v local.n
mul.v.i
sub.v.v
pop.v.v self.direction
b [230]

:[226]
push.v self.shake
pushi.e 42
cmp.i.v EQ
bf [228]

:[227]
push.v self.direction
pushi.e 20
pushloc.v local.n
mul.v.i
add.v.v
pop.v.v self.direction
push.v local.offsetx
push.v self.hspeed
add.v.v
pop.v.v local.offsetx
push.v local.offsety
push.v self.vspeed
add.v.v
pop.v.v local.offsety
push.v self.direction
pushi.e 20
pushloc.v local.n
mul.v.i
sub.v.v
pop.v.v self.direction
b [230]

:[228]
push.v self.shake
pushi.e 43
cmp.i.v EQ
bf [230]

:[229]
push.v self.direction
pushi.e 30
pushloc.v local.n
mul.v.i
add.v.v
pop.v.v self.direction
push.v local.offsetx
push.v self.hspeed
push.d 0.7
mul.d.v
pushi.e 10
add.i.v
add.v.v
pop.v.v local.offsetx
push.v local.offsety
push.v self.vspeed
push.d 0.7
mul.d.v
add.v.v
pop.v.v local.offsety
push.v self.direction
pushi.e 30
pushloc.v local.n
mul.v.i
sub.v.v
pop.v.v self.direction

:[230]
b [232]

:[231]
push.v local.offsetx
push.v self.shake
call.i random(argc=1)
push.v self.shake
pushi.e 2
conv.i.d
div.d.v
sub.v.v
add.v.v
pop.v.v local.offsetx
push.v local.offsety
push.v self.shake
call.i random(argc=1)
push.v self.shake
pushi.e 2
conv.i.d
div.d.v
sub.v.v
add.v.v
pop.v.v local.offsety

:[232]
pushbltn.v self.application_surface
call.i surface_get_width(argc=1)
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_wview
div.v.v
pop.v.v local.display_scale
pushloc.v local.letterx
pushloc.v local.offsetx
add.v.v
pushloc.v local.display_scale
mul.v.v
call.i round(argc=1)
pushloc.v local.display_scale
div.v.v
pop.v.v local.finalx
push.v self.myy
pushloc.v local.offsety
add.v.v
pushloc.v local.display_scale
mul.v.v
call.i round(argc=1)
pushloc.v local.display_scale
div.v.v
pop.v.v local.finaly
pushloc.v local.angle
push.v self.vtextscale
pushloc.v local.halfscale
mul.v.v
push.v self.htextscale
pushloc.v local.halfscale
mul.v.v
pushloc.v local.myletter
pushloc.v local.finaly
pushloc.v local.finalx
call.i draw_text_transformed(argc=6)
popz.v
push.v local.letterx
push.v self.spacing
add.v.v
pop.v.v local.letterx
pushglb.v global.language
push.s "en"@3390
cmp.s.v EQ
bf [294]

:[233]
push.v self.myfont
pushi.e 8
cmp.i.v EQ
bf [247]

:[234]
pushloc.v local.myletter
push.s "w"@3023
cmp.s.v EQ
bf [236]

:[235]
push.v local.letterx
pushi.e 2
add.i.v
pop.v.v local.letterx

:[236]
pushloc.v local.myletter
push.s "m"@47740
cmp.s.v EQ
bf [238]

:[237]
push.v local.letterx
pushi.e 2
add.i.v
pop.v.v local.letterx

:[238]
pushloc.v local.myletter
push.s "i"@37
cmp.s.v EQ
bf [240]

:[239]
push.v local.letterx
pushi.e 2
sub.i.v
pop.v.v local.letterx

:[240]
pushloc.v local.myletter
push.s "l"@3021
cmp.s.v EQ
bf [242]

:[241]
push.v local.letterx
pushi.e 2
sub.i.v
pop.v.v local.letterx

:[242]
pushloc.v local.myletter
push.s "s"@797
cmp.s.v EQ
bf [244]

:[243]
push.v local.letterx
pushi.e 1
sub.i.v
pop.v.v local.letterx

:[244]
pushloc.v local.myletter
push.s "j"@2963
cmp.s.v EQ
bf [246]

:[245]
push.v local.letterx
pushi.e 1
sub.i.v
pop.v.v local.letterx

:[246]
b [293]

:[247]
push.v self.myfont
pushi.e 9
cmp.i.v EQ
bf [293]

:[248]
pushloc.v local.myletter
push.s "D"@6302
cmp.s.v EQ
bf [250]

:[249]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[250]
pushloc.v local.myletter
push.s "Q"@50001
cmp.s.v EQ
bf [252]

:[251]
push.v local.letterx
pushi.e 3
add.i.v
pop.v.v local.letterx

:[252]
pushloc.v local.myletter
push.s "M"@49968
cmp.s.v EQ
bf [254]

:[253]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[254]
pushloc.v local.myletter
push.s "L"@49978
cmp.s.v EQ
bf [256]

:[255]
push.v local.letterx
pushi.e 1
sub.i.v
pop.v.v local.letterx

:[256]
pushloc.v local.myletter
push.s "K"@47576
cmp.s.v EQ
bf [258]

:[257]
push.v local.letterx
pushi.e 1
sub.i.v
pop.v.v local.letterx

:[258]
pushloc.v local.myletter
push.s "C"@6306
cmp.s.v EQ
bf [260]

:[259]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[260]
pushloc.v local.myletter
push.s "."@32967
cmp.s.v EQ
bf [262]

:[261]
push.v local.letterx
pushi.e 3
sub.i.v
pop.v.v local.letterx

:[262]
pushloc.v local.myletter
push.s "!"@49994
cmp.s.v EQ
bf [264]

:[263]
push.v local.letterx
pushi.e 3
sub.i.v
pop.v.v local.letterx

:[264]
pushloc.v local.myletter
push.s "O"@49977
cmp.s.v EQ
bt [266]

:[265]
pushloc.v local.myletter
push.s "W"@49975
cmp.s.v EQ
b [267]

:[266]
push.e 1

:[267]
bf [269]

:[268]
push.v local.letterx
pushi.e 2
add.i.v
pop.v.v local.letterx

:[269]
pushloc.v local.myletter
push.s "I"@6333
cmp.s.v EQ
bf [271]

:[270]
push.v local.letterx
pushi.e 6
sub.i.v
pop.v.v local.letterx

:[271]
pushloc.v local.myletter
push.s "T"@49969
cmp.s.v EQ
bf [273]

:[272]
push.v local.letterx
pushi.e 1
sub.i.v
pop.v.v local.letterx

:[273]
pushloc.v local.myletter
push.s "P"@49979
cmp.s.v EQ
bf [275]

:[274]
push.v local.letterx
pushi.e 2
sub.i.v
pop.v.v local.letterx

:[275]
pushloc.v local.myletter
push.s "R"@49974
cmp.s.v EQ
bf [277]

:[276]
push.v local.letterx
pushi.e 2
sub.i.v
pop.v.v local.letterx

:[277]
pushloc.v local.myletter
push.s "A"@6301
cmp.s.v EQ
bf [279]

:[278]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[279]
pushloc.v local.myletter
push.s "H"@50002
cmp.s.v EQ
bf [281]

:[280]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[281]
pushloc.v local.myletter
push.s "B"@34823
cmp.s.v EQ
bf [283]

:[282]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[283]
pushloc.v local.myletter
push.s "G"@5047
cmp.s.v EQ
bf [285]

:[284]
push.v local.letterx
pushi.e 1
add.i.v
pop.v.v local.letterx

:[285]
pushloc.v local.myletter
push.s "F"@47599
cmp.s.v EQ
bf [287]

:[286]
push.v local.letterx
pushi.e 1
sub.i.v
pop.v.v local.letterx

:[287]
pushloc.v local.myletter
push.s "?"@49995
cmp.s.v EQ
bf [289]

:[288]
push.v local.letterx
pushi.e 3
sub.i.v
pop.v.v local.letterx

:[289]
pushloc.v local.myletter
push.s "'"@49996
cmp.s.v EQ
bf [291]

:[290]
push.v local.letterx
pushi.e 6
sub.i.v
pop.v.v local.letterx

:[291]
pushloc.v local.myletter
push.s "J"@50003
cmp.s.v EQ
bf [293]

:[292]
push.v local.letterx
pushi.e 1
sub.i.v
pop.v.v local.letterx

:[293]
b [312]

:[294]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [312]

:[295]
push.v self.vtext
conv.v.b
bf [297]

:[296]
push.v self.myy
pushloc.v local.myletter
call.i string_width(argc=1)
push.v self.htextscale
mul.v.v
pushloc.v local.halfscale
mul.v.v
call.i round(argc=1)
add.v.v
pop.v.v self.myy
b [312]

:[297]
pushloc.v local.myletter
push.s " "@18
cmp.s.v EQ
bt [299]

:[298]
pushloc.v local.myletter
call.i ord(argc=1)
push.i 65377
cmp.i.v GTE
b [300]

:[299]
push.e 1

:[300]
bf [302]

:[301]
push.v local.letterx
push.v self.spacing
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pop.v.v local.letterx
b [312]

:[302]
pushloc.v local.myletter
call.i ord(argc=1)
pushi.e 1024
cmp.i.v LT
bt [304]

:[303]
pushloc.v local.myletter
call.i ord(argc=1)
pushi.e 8211
cmp.i.v EQ
b [305]

:[304]
push.e 1

:[305]
bf [312]

:[306]
push.v self.myfont
pushi.e 10
cmp.i.v EQ
bt [308]

:[307]
push.v self.myfont
pushi.e 11
cmp.i.v EQ
b [309]

:[308]
push.e 1

:[309]
bf [311]

:[310]
push.v local.letterx
push.v self.spacing
push.d 0.3
mul.d.v
call.i floor(argc=1)
sub.v.v
pop.v.v local.letterx
b [312]

:[311]
push.v local.letterx
push.v self.spacing
push.d 0.4
mul.d.v
call.i floor(argc=1)
sub.v.v
pop.v.v local.letterx

:[312]
push.v self.vtext
conv.v.b
not.b
bf [316]

:[313]
pushloc.v local.halfsize
conv.v.b
bf [315]

:[314]
push.v self.myx
pushloc.v local.letterx
push.v self.myx
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i round(argc=1)
pop.v.v self.myx
b [316]

:[315]
pushloc.v local.letterx
pop.v.v self.myx

:[316]
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
b [4]

:[end]