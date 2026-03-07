.localvar 0 arguments
.localvar 1 i 345
.localvar 2 j 346
.localvar 3 index 347
.localvar 4 ch 350
.localvar 5 ch_base 351

:[0]
pushi.e 8
pop.v.i self.ascii_rows
pushi.e 7
pop.v.i self.ascii_cols
pushi.e 0
pushi.e -1
push.v self.ascii_cols
pushi.e 1
sub.i.v
conv.v.i
pop.v.i [array]self.ascii_x
pushi.e 0
pushi.e -1
push.v self.ascii_rows
pushi.e 1
sub.i.v
conv.v.i
pop.v.i [array]self.ascii_y
pushi.e 0
pushi.e -1
push.v self.ascii_rows
pushi.e 1
sub.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.ascii_cols
pushi.e 1
sub.i.v
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]self.ascii_charmap
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.ascii_cols
cmp.v.v LT
bf [3]

:[2]
pushi.e 60
pushloc.v local.i
pushi.e 32
mul.i.v
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.ascii_x
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[3]
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
push.v self.ascii_rows
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [12]

:[5]
pushi.e 75
pushloc.v local.i
pushi.e 14
mul.i.v
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.ascii_y
pushi.e 135
pushloc.v local.i
pushi.e 14
mul.i.v
add.v.i
pushi.e -1
pushloc.v local.i
push.v self.ascii_rows
pushi.e 2
conv.i.d
div.d.v
add.v.v
conv.v.i
pop.v.v [array]self.ascii_y
pushi.e 0
pop.v.i local.j

:[6]
pushloc.v local.j
pushi.e 7
cmp.i.v LT
bf [11]

:[7]
pushloc.v local.i
pushi.e 7
mul.i.v
pushloc.v local.j
add.v.v
pop.v.v local.index
pushloc.v local.index
pushi.e 26
cmp.i.v LT
bf [9]

:[8]
pushi.e 65
pushloc.v local.index
add.v.i
call.i chr(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushloc.v local.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.ascii_charmap
pushi.e 97
pushloc.v local.index
add.v.i
call.i chr(argc=1)
pushi.e -1
pushloc.v local.i
push.v self.ascii_rows
pushi.e 2
conv.i.d
div.d.v
add.v.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushloc.v local.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.ascii_charmap
b [10]

:[9]
push.s ""@36
pushi.e -1
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushloc.v local.j
conv.v.i
chkindex.e
add.i.i
pop.v.s [array]self.ascii_charmap
push.s ""@36
pushi.e -1
pushloc.v local.i
push.v self.ascii_rows
pushi.e 2
conv.i.d
div.d.v
add.v.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushloc.v local.j
conv.v.i
chkindex.e
add.i.i
pop.v.s [array]self.ascii_charmap

:[10]
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [6]

:[11]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [4]

:[12]
push.s "あいうえおまみむめもぁぃぅぇぉ"@3325
pushi.e -1
pushi.e 0
pop.v.s [array]self.hiragana_chstr
push.s "かきくけこや　ゆ　よがぎぐげご"@3327
pushi.e -1
pushi.e 1
pop.v.s [array]self.hiragana_chstr
push.s "さしすせそらりるれろざじずぜぞ"@3328
pushi.e -1
pushi.e 2
pop.v.s [array]self.hiragana_chstr
push.s "たちつてとわをんー　だぢづでど"@3329
pushi.e -1
pushi.e 3
pop.v.s [array]self.hiragana_chstr
push.s "なにぬねのゃゅょっゎばびぶべぼ"@3330
pushi.e -1
pushi.e 4
pop.v.s [array]self.hiragana_chstr
push.s "はひふへほ　　　　　ぱぴぷぺぽ"@3331
pushi.e -1
pushi.e 5
pop.v.s [array]self.hiragana_chstr
push.s "アイウエオマミムメモァィゥェォ"@3332
pushi.e -1
pushi.e 0
pop.v.s [array]self.katakana_chstr
push.s "カキクケコヤ　ユ　ヨガギグゲゴ"@3334
pushi.e -1
pushi.e 1
pop.v.s [array]self.katakana_chstr
push.s "サシスセソラリルレロザジズゼゾ"@3335
pushi.e -1
pushi.e 2
pop.v.s [array]self.katakana_chstr
push.s "タチツテトワヲンー　ダヂヅデド"@3336
pushi.e -1
pushi.e 3
pop.v.s [array]self.katakana_chstr
push.s "ナニヌネノャュョッヮバビブベボ"@3337
pushi.e -1
pushi.e 4
pop.v.s [array]self.katakana_chstr
push.s "ハヒフヘホヵヶヴ　　パピプペポ"@3338
pushi.e -1
pushi.e 5
pop.v.s [array]self.katakana_chstr
pushi.e 6
pop.v.i self.hiragana_rows
pushi.e 15
pop.v.i self.hiragana_cols
pushi.e 0
pushi.e -1
push.v self.hiragana_cols
pushi.e 1
sub.i.v
conv.v.i
pop.v.i [array]self.hiragana_x
pushi.e 0
pushi.e -1
push.v self.hiragana_rows
pushi.e 1
sub.i.v
conv.v.i
pop.v.i [array]self.hiragana_y
pushi.e 0
pushi.e -1
push.v self.hiragana_rows
pushi.e 1
sub.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.hiragana_cols
pushi.e 1
sub.i.v
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]self.hiragana_charmap
pushi.e 0
pop.v.i local.i

:[13]
pushloc.v local.i
push.v self.hiragana_cols
cmp.v.v LT
bf [15]

:[14]
pushi.e 32
pushloc.v local.i
pushi.e 16
mul.i.v
add.v.i
pushloc.v local.i
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 8
mul.i.v
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.hiragana_x
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [13]

:[15]
pushi.e 0
pop.v.i local.i

:[16]
pushloc.v local.i
push.v self.hiragana_rows
cmp.v.v LT
bf [23]

:[17]
pushi.e 68
pushloc.v local.i
pushi.e 16
mul.i.v
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.hiragana_y
pushi.e 0
pop.v.i local.j

:[18]
pushloc.v local.j
push.v self.hiragana_cols
cmp.v.v LT
bf [22]

:[19]
pushloc.v local.j
pushi.e 1
add.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.hiragana_chstr
call.i string_char_at(argc=2)
pop.v.v local.ch
pushloc.v local.ch
push.s "　"@3340
cmp.s.v EQ
bf [21]

:[20]
push.s ""@36
pop.v.s local.ch

:[21]
pushloc.v local.ch
pushi.e -1
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushloc.v local.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.hiragana_charmap
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [18]

:[22]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [16]

:[23]
push.v self.hiragana_rows
pop.v.v self.katakana_rows
push.v self.hiragana_cols
pop.v.v self.katakana_cols
pushi.e 0
pushi.e -1
push.v self.katakana_cols
pushi.e 1
sub.i.v
conv.v.i
pop.v.i [array]self.katakana_x
pushi.e 0
pushi.e -1
push.v self.katakana_rows
pushi.e 1
sub.i.v
conv.v.i
pop.v.i [array]self.katakana_y
pushi.e 0
pushi.e -1
push.v self.katakana_rows
pushi.e 1
sub.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.katakana_cols
pushi.e 1
sub.i.v
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]self.katakana_charmap
pushi.e 0
pop.v.i local.i

:[24]
pushloc.v local.i
push.v self.katakana_cols
cmp.v.v LT
bf [26]

:[25]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.hiragana_x
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.katakana_x
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [24]

:[26]
pushi.e 0
pop.v.i local.i

:[27]
pushloc.v local.i
push.v self.katakana_rows
cmp.v.v LT
bf [34]

:[28]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.hiragana_y
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.katakana_y
pushi.e 0
pop.v.i local.j

:[29]
pushloc.v local.j
push.v self.katakana_cols
cmp.v.v LT
bf [33]

:[30]
pushloc.v local.j
pushi.e 1
add.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.katakana_chstr
call.i string_char_at(argc=2)
pop.v.v local.ch
pushloc.v local.ch
push.s "　"@3340
cmp.s.v EQ
bf [32]

:[31]
push.s ""@36
pop.v.s local.ch

:[32]
pushloc.v local.ch
pushi.e -1
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushloc.v local.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.katakana_charmap
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [29]

:[33]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [27]

:[34]
pushi.e 6
pop.v.i self.ja_ascii_rows
pushi.e 9
pop.v.i self.ja_ascii_cols
pushi.e 0
pushi.e -1
push.v self.ja_ascii_cols
pushi.e 1
sub.i.v
conv.v.i
pop.v.i [array]self.ja_ascii_x
pushi.e 0
pushi.e -1
push.v self.ja_ascii_rows
pushi.e 1
sub.i.v
conv.v.i
pop.v.i [array]self.ja_ascii_y
pushi.e 0
pushi.e -1
push.v self.ja_ascii_rows
pushi.e 1
sub.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.ja_ascii_cols
pushi.e 1
sub.i.v
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]self.ja_ascii_charmap
pushi.e 0
pop.v.i local.i

:[35]
pushloc.v local.i
push.v self.ja_ascii_cols
cmp.v.v LT
bf [37]

:[36]
pushi.e 60
pushloc.v local.i
pushi.e 23
mul.i.v
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.ja_ascii_x
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [35]

:[37]
pushi.e 0
pop.v.i local.i

:[38]
pushloc.v local.i
push.v self.ja_ascii_rows
cmp.v.v LT
bf [49]

:[39]
pushi.e 68
pushloc.v local.i
pushi.e 16
mul.i.v
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.ja_ascii_y
pushloc.v local.i
pushi.e 3
cmp.i.v GTE
bf [41]

:[40]
pushi.e 97
pop.v.i local.ch_base
b [42]

:[41]
pushi.e 65
pop.v.i local.ch_base

:[42]
pushi.e 0
pop.v.i local.j

:[43]
pushloc.v local.j
push.v self.ja_ascii_cols
cmp.v.v LT
bf [48]

:[44]
pushloc.v local.ch_base
pushloc.v local.i
pushi.e 3
mod.i.v
pushi.e 9
mul.i.v
add.v.v
pushloc.v local.j
add.v.v
pop.v.v local.ch
pushloc.v local.ch
pushloc.v local.ch_base
sub.v.v
pushi.e 26
cmp.i.v LT
bf [46]

:[45]
pushloc.v local.ch
call.i chr(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushloc.v local.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.ja_ascii_charmap
b [47]

:[46]
push.s ""@36
pushi.e -1
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushloc.v local.j
conv.v.i
chkindex.e
add.i.i
pop.v.s [array]self.ja_ascii_charmap

:[47]
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [43]

:[48]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [38]

:[49]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i self.selected_charmap
push.v self.hiragana_rows
pop.v.v self.rows
push.v self.hiragana_cols
pop.v.v self.cols
push.v self.hiragana_x
pop.v.v self.xmap
push.v self.hiragana_y
pop.v.v self.ymap
push.v self.hiragana_charmap
pop.v.v self.charmap
b [52]

:[51]
pushi.e 0
pop.v.i self.selected_charmap
push.v self.ascii_rows
pop.v.v self.rows
push.v self.ascii_cols
pop.v.v self.cols
push.v self.ascii_x
pop.v.v self.xmap
push.v self.ascii_y
pop.v.v self.ymap
push.v self.ascii_charmap
pop.v.v self.charmap

:[52]
pushi.e 0
pop.v.i self.selected_row
pushi.e 0
pop.v.i self.selected_col
pushi.e 0
pop.v.i self.selected3
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [57]

:[53]
pushi.e 20
pop.v.i self.title_y
pushi.e 44
pop.v.i self.name_y
pushi.e 172
pop.v.i self.charset_y
pushi.e 204
pop.v.i self.menu_y
pushi.e 118
pop.v.i self.name_x
pushi.e 32
pop.v.i self.charset_x0
pushi.e 118
pop.v.i self.charset_x1
pushi.e 202
pop.v.i self.charset_x2
pushi.e 55
pop.v.i self.menu_x0
pushi.e 125
pop.v.i self.menu_x1
pushi.e 205
pop.v.i self.menu_x2
push.v self.truereset
pushi.e 0
cmp.i.v NEQ
bf [55]

:[54]
pushi.e 35
pop.v.i self.continue_x
pushi.e 160
pop.v.i self.reset_x
b [56]

:[55]
pushi.e 70
pop.v.i self.continue_x
pushi.e 195
pop.v.i self.reset_x

:[56]
b [end]

:[57]
pushi.e 30
pop.v.i self.title_y
pushi.e 55
pop.v.i self.name_y
pushi.e 999
pop.v.i self.charset_y
pushi.e 200
pop.v.i self.menu_y
pushi.e 140
pop.v.i self.name_x
pushi.e 60
pop.v.i self.menu_x0
pushi.e 120
pop.v.i self.menu_x1
pushi.e 220
pop.v.i self.menu_x2
pushi.e 85
pop.v.i self.continue_x
push.v self.truereset
pushi.e 0
cmp.i.v NEQ
bf [59]

:[58]
pushi.e 175
pop.v.i self.reset_x
b [end]

:[59]
pushi.e 195
pop.v.i self.reset_x

:[end]