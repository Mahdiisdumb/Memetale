.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.dn
push.v self.sprite_height
push.v self.line
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.ht_a
push.v self.y
push.v self.line
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.ht_b
push.v self.line
pushi.e 2
mul.i.v
pop.v.v self.ht_c
push.v self.dn
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.ht_b
push.v self.x
push.v self.ht_a
push.v self.wd
push.v self.ht_c
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v

:[2]
push.v self.finishedreading
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [36]

:[4]
pushi.e 0
pop.v.i self.ww
push.s "0"@3159
pop.v.s self.mychar

:[5]
push.v self.mychar
push.s "}"@47843
cmp.s.v NEQ
bf [7]

:[6]
push.v self.mychar
push.s "~"@6317
cmp.s.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [31]

:[9]
push.v self.myread
pushi.e 1
add.i.v
push.v self.mydata
call.i string_char_at(argc=2)
pop.v.v self.mychar
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.mychar
call.i ord(argc=1)
pushi.e 84
cmp.i.v GTE
bf [11]

:[10]
push.v self.mychar
call.i ord(argc=1)
pushi.e 121
cmp.i.v LTE
b [12]

:[11]
push.e 0

:[12]
bf [16]

:[13]
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
push.v self.mychar
call.i ord(argc=1)
pushi.e 85
sub.i.v
cmp.v.v LT
bf [16]

:[15]
push.v self.ww
pushi.e 2
add.i.v
pop.v.v self.ww
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[16]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.mychar
call.i ord(argc=1)
pushi.e 39
cmp.i.v GTE
bf [18]

:[17]
push.v self.mychar
call.i ord(argc=1)
pushi.e 82
cmp.i.v LTE
b [19]

:[18]
push.e 0

:[19]
bf [30]

:[20]
push.v self.wd
pushi.e 120
cmp.i.v GT
bf [22]

:[21]
push.v self.spec
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [27]

:[24]
pushi.e 192
conv.i.v
push.v self.y
push.v self.line
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.ww
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blk
push.v self.mychar
call.i ord(argc=1)
pushi.e 40
sub.i.v
push.v self.blk
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.blk
conv.v.i
pushenv [26]

:[25]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[26]
popenv [25]
push.v self.ww
push.v self.mychar
call.i ord(argc=1)
pushi.e 40
sub.i.v
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.ww
b [30]

:[27]
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
push.v self.mychar
call.i ord(argc=1)
pushi.e 40
sub.i.v
cmp.v.v LT
bf [30]

:[29]
pushi.e 192
conv.i.v
push.v self.y
push.v self.line
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
add.i.v
push.v self.x
push.v self.ww
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.ww
pushi.e 2
add.i.v
pop.v.v self.ww
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [28]

:[30]
push.v self.myread
pushi.e 1
add.i.v
pop.v.v self.myread
b [5]

:[31]
pushi.e 0
pop.v.i self.ww
push.v self.line
pushi.e 1
add.i.v
pop.v.v self.line
push.v self.mychar
push.s "~"@6317
cmp.s.v EQ
bf [34]

:[32]
pushi.e 1
pop.v.i self.finishedreading
call.i instance_destroy(argc=0)
popz.v
exit.i

:[33]
b [35]

:[34]
pushi.e 1
push.v self.myvapor
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[35]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [4]

:[36]
popz.i

:[end]