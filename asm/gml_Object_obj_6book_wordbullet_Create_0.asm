.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.col
pushi.e 0
pop.v.i self.counter
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.shake
pushi.e 15
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.chooser
push.s "obj_6book_wordbullet_bad_"@51559
push.v self.chooser
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pop.v.v self.word
push.s "obj_6book_wordbullet_good_"@51561
push.v self.chooser
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pop.v.v self.word2
push.v self.x
pushi.e 320
cmp.i.v LT
bf [2]

:[1]
push.d 3.5
pop.v.d self.hspeed
b [3]

:[2]
push.d -3.5
pop.v.d self.hspeed

:[3]
push.v 1630.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[4]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]