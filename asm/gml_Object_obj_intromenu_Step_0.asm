.localvar 0 arguments

:[0]
push.v self.naming
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
push.v self.naming
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
push.v self.charname
call.i scr_namingscreen_check(argc=1)
popz.v

:[end]