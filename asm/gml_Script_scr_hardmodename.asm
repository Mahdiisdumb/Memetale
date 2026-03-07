.localvar 0 arguments

:[0]
pushbltn.v self.argument0
call.i string_lower(argc=1)
push.s "frisk"@6344
cmp.s.v EQ
bt [2]

:[1]
pushbltn.v self.argument0
call.i string_to_hiragana(argc=1)
push.s "ふりすく"@6345
cmp.s.v EQ
b [3]

:[2]
push.e 1

:[3]
conv.b.v
ret.v

:[end]