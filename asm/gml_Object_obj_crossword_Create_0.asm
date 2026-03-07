.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.cross
pushi.e 0
pop.v.i self.cancel
pushi.e 0
pop.v.i self.nightmare
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 56
cmp.i.v EQ
bt [3]

:[2]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 57
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [end]

:[5]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "fun"@3079
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.fn
push.v self.fn
pushi.e 56
cmp.i.v EQ
bt [7]

:[6]
push.v self.fn
pushi.e 57
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.nightmare

:[10]
call.i ossafe_ini_close(argc=0)
popz.v

:[end]