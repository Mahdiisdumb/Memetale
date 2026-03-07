.localvar 0 arguments

:[0]
push.v self.look
pushi.e 27
cmp.i.v EQ
bf [2]

:[1]
pushi.e 5
pop.v.i self.conversation

:[2]
push.v self.look
pushi.e 26
cmp.i.v EQ
bf [4]

:[3]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[4]
push.v self.look
pushi.e 25
cmp.i.v EQ
bf [6]

:[5]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 50
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[6]
push.v self.look
pushi.e 24
cmp.i.v EQ
bf [25]

:[7]
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.pp
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.ss
push.v self.pp
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.dsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[9]
push.v self.pp
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[11]
push.v self.pp
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[13]
push.v self.pp
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[15]
push.v self.ss
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[17]
push.v self.ss
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v self.sans
conv.v.i
push.v [stacktop]self.rsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[19]
push.v self.ss
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.v self.sans
conv.v.i
push.v [stacktop]self.usprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[21]
push.v self.ss
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[23]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.spinagain
pushi.e 1
add.i.v
pop.v.v self.spinagain
push.v self.spinagain
pushi.e 37
cmp.i.v GT
bf [25]

:[24]
pushi.e 25
pop.v.i self.look

:[25]
push.v self.look
pushi.e 23
cmp.i.v EQ
bf [34]

:[26]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.sprite_index
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
cmp.v.v EQ
bf [28]

:[27]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
b [29]

:[28]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[29]
push.v self.sans
conv.v.i
push.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
cmp.v.v EQ
bf [31]

:[30]
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
b [32]

:[31]
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[32]
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.spinagain
pushi.e 1
add.i.v
pop.v.v self.spinagain
push.v self.spinagain
pushi.e 5
cmp.i.v GT
bf [34]

:[33]
pushi.e 0
pop.v.i self.spinagain
pushi.e 24
pop.v.i self.look

:[34]
push.v self.look
pushi.e 22
cmp.i.v EQ
bf [36]

:[35]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[36]
push.v self.look
pushi.e 21
cmp.i.v EQ
bf [38]

:[37]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[38]
push.v self.look
pushi.e 20
cmp.i.v EQ
bf [40]

:[39]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[40]
push.v self.look
pushi.e 19
cmp.i.v EQ
bf [42]

:[41]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[42]
push.v self.look
pushi.e 18
cmp.i.v EQ
bf [44]

:[43]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[44]
push.v self.look
pushi.e 17
cmp.i.v EQ
bf [46]

:[45]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[46]
push.v self.look
pushi.e 16
cmp.i.v EQ
bf [48]

:[47]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[48]
push.v self.look
pushi.e 15
cmp.i.v EQ
bf [50]

:[49]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[50]
push.v self.look
pushi.e 14
cmp.i.v EQ
bf [52]

:[51]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[52]
push.v self.look
pushi.e 13
cmp.i.v EQ
bf [54]

:[53]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[54]
push.v self.look
pushi.e 12
cmp.i.v EQ
bf [56]

:[55]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[56]
push.v self.look
pushi.e 11
cmp.i.v EQ
bf [58]

:[57]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 5
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[58]
push.v self.look
pushi.e 10
cmp.i.v EQ
bf [60]

:[59]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 6
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[60]
push.v self.look
pushi.e 9
cmp.i.v EQ
bf [62]

:[61]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 7
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[62]
push.v self.look
pushi.e 8
cmp.i.v EQ
bf [64]

:[63]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 10
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[64]
push.v self.look
pushi.e 7
cmp.i.v EQ
bf [66]

:[65]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 12
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[66]
push.v self.look
pushi.e 6
cmp.i.v EQ
bf [68]

:[67]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 12
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look

:[68]
push.v self.look
pushi.e 5
cmp.i.v EQ
bf [70]

:[69]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 16
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 6
pop.v.i self.look

:[70]
push.v self.look
pushi.e 4
cmp.i.v EQ
bf [72]

:[71]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 16
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.look

:[72]
push.v self.look
pushi.e 3
cmp.i.v EQ
bf [74]

:[73]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 24
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.look

:[74]
push.v self.look
pushi.e 2
cmp.i.v EQ
bf [76]

:[75]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 24
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i self.look

:[76]
push.v self.look
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.dsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.look

:[78]
push.v self.look
pushi.e 0
cmp.i.v EQ
bf [end]

:[79]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.lsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.look

:[end]