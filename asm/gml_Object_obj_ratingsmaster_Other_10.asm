.localvar 0 arguments

:[0]
push.v self.curtype
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
push.v self.curtype
pushi.e 13
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 5
pop.v.i self.i

:[5]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.rq_v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.rq_v
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.rq_s
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.rq_s
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.rq
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.rq
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [5]

:[7]
push.v self.curtype
pushi.e 1
cmp.i.v EQ
bf [19]

:[8]
push.s "mett_ratings_violence"@32912
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e -1
pushi.e 1
push.v [array]self.typeuse
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 50
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[10]
pushi.e -1
pushi.e 1
push.v [array]self.typeuse
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 25
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[12]
pushi.e -1
pushi.e 1
push.v [array]self.typeuse
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[14]
pushi.e -1
pushi.e 1
push.v [array]self.typeuse
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[16]
pushi.e -1
pushi.e 1
push.v [array]self.typeuse
pushi.e 4
cmp.i.v GTE
bf [18]

:[17]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[18]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[19]
push.v self.curtype
pushi.e 2
cmp.i.v EQ
bf [25]

:[20]
push.s "mett_ratings_disappoint"@32914
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e -100
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushi.e -1
pushi.e 2
push.v [array]self.typeuse
pushi.e 5
cmp.i.v GTE
bf [22]

:[21]
pushi.e -50
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[22]
pushi.e -1
pushi.e 2
push.v [array]self.typeuse
pushi.e 20
cmp.i.v GTE
bf [24]

:[23]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[24]
pushi.e 0
pop.v.i self.boastmode
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[25]
push.v self.curtype
pushi.e 3
cmp.i.v EQ
bf [27]

:[26]
push.s "mett_ratings_justice"@32916
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e 100
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushi.e -1
pushi.e 3
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[27]
push.v self.curtype
pushi.e 4
cmp.i.v EQ
bf [39]

:[28]
push.s "mett_ratings_action"@32918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e 300
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushi.e -1
pushi.e 4
push.v [array]self.typeuse
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 300
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[30]
pushi.e -1
pushi.e 4
push.v [array]self.typeuse
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 200
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[32]
pushi.e -1
pushi.e 4
push.v [array]self.typeuse
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
pushi.e 150
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[34]
pushi.e -1
pushi.e 4
push.v [array]self.typeuse
pushi.e 3
cmp.i.v EQ
bf [36]

:[35]
pushi.e 100
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[36]
pushi.e -1
pushi.e 4
push.v [array]self.typeuse
pushi.e 4
cmp.i.v GTE
bf [38]

:[37]
pushi.e 50
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[38]
pushi.e -1
pushi.e 4
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[39]
push.v self.curtype
pushi.e 5
cmp.i.v EQ
bf [51]

:[40]
push.s "mett_ratings_hyperaction"@32920
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e 400
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushi.e -1
pushi.e 5
push.v [array]self.typeuse
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 400
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[42]
pushi.e -1
pushi.e 5
push.v [array]self.typeuse
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 300
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[44]
pushi.e -1
pushi.e 5
push.v [array]self.typeuse
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushi.e 200
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[46]
pushi.e -1
pushi.e 5
push.v [array]self.typeuse
pushi.e 3
cmp.i.v EQ
bf [48]

:[47]
pushi.e 200
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[48]
pushi.e -1
pushi.e 5
push.v [array]self.typeuse
pushi.e 4
cmp.i.v GTE
bf [50]

:[49]
pushi.e 100
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[50]
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[51]
push.v self.curtype
pushi.e 6
cmp.i.v EQ
bf [53]

:[52]
push.s "mett_ratings_beauty"@48707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e 1500
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushi.e -1
pushi.e 6
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[53]
push.v self.curtype
pushi.e 7
cmp.i.v EQ
bf [59]

:[54]
push.s "mett_ratings_fetching"@32924
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e 600
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushi.e -1
pushi.e 7
push.v [array]self.typeuse
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
pushi.e 700
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[56]
pushi.e -1
pushi.e 7
push.v [array]self.typeuse
pushi.e 1
cmp.i.v GTE
bf [58]

:[57]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[58]
pushi.e -1
pushi.e 7
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[59]
push.v self.curtype
pushi.e 8
cmp.i.v EQ
bf [61]

:[60]
push.s "mett_ratings_junkfood"@32926
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e -50
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushi.e -1
pushi.e 8
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[61]
push.v self.curtype
pushi.e 9
cmp.i.v EQ
bf [69]

:[62]
push.s "mett_ratings_brandfood"@32928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e 200
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushi.e -1
pushi.e 9
push.v [array]self.typeuse
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
pushi.e 300
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[64]
pushi.e -1
pushi.e 9
push.v [array]self.typeuse
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e 200
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[66]
pushi.e -1
pushi.e 9
push.v [array]self.typeuse
pushi.e 2
cmp.i.v GTE
bf [68]

:[67]
pushi.e 200
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[68]
pushi.e -1
pushi.e 9
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[69]
push.v self.curtype
pushi.e 10
cmp.i.v EQ
bf [77]

:[70]
push.s "mett_ratings_brandfood"@32928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e 400
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushi.e -1
pushi.e 10
push.v [array]self.typeuse
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
pushi.e 500
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[72]
pushi.e -1
pushi.e 10
push.v [array]self.typeuse
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
pushi.e 300
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[74]
pushi.e -1
pushi.e 10
push.v [array]self.typeuse
pushi.e 2
cmp.i.v GTE
bf [76]

:[75]
pushi.e 300
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[76]
pushi.e -1
pushi.e 10
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[77]
push.v self.curtype
pushi.e 11
cmp.i.v EQ
bf [89]

:[78]
push.s "mett_ratings_dramatic"@32930
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e 100
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushglb.v global.hp
pushglb.v global.maxhp
push.d 1.5
div.d.v
cmp.v.v LT
bf [80]

:[79]
pushi.e 150
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[80]
pushglb.v global.hp
pushglb.v global.maxhp
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [82]

:[81]
pushi.e 250
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[82]
pushglb.v global.hp
pushglb.v global.maxhp
pushi.e 4
conv.i.d
div.d.v
cmp.v.v LT
bf [84]

:[83]
pushi.e 400
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[84]
pushglb.v global.hp
pushi.e 4
cmp.i.v LT
bf [86]

:[85]
pushi.e 500
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[86]
pushglb.v global.hp
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
pushi.e 600
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v

:[88]
pushi.e -1
pushi.e 11
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[89]
push.v self.curtype
pushi.e 12
cmp.i.v EQ
bf [91]

:[90]
push.s "mett_ratings_writing"@32932
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e 50
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
push.v self.essay
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq_v
pushi.e -1
pushi.e 12
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[91]
push.v self.curtype
pushi.e 13
cmp.i.v EQ
bf [93]

:[92]
push.s "mett_ratings_brandfood"@32928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.rq
pushi.e 700
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_v
pushi.e -1
pushi.e 13
dup.i 1
push.v [array]self.typeuse
pushi.e 1
add.i.v
pop.i.v [array]self.typeuse

:[93]
pushi.e 404
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [97]

:[94]
push.v 404.turns
pushi.e 20
cmp.i.v GTE
bf [97]

:[95]
pushi.e -1
pushi.e 0
push.v [array]self.rq_v
pushi.e 0
cmp.i.v GT
bf [97]

:[96]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.rq_v
pushi.e 2
mul.i.v
pop.i.v [array]self.rq_v

:[97]
push.v global.ratings
pushi.e -1
pushi.e 0
push.v [array]self.rq_v
add.v.v
pop.v.v global.ratings
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.rq_s

:[end]