#!/usr/bin/env lua

-- Program to print out the numbers from 1 to 100 (inclusive). But,
--  when the number is a divisible by 3 or 5 print 'Crackle' or 'Pop',
--  respectively, instead. If divisible by both, print 'CracklePop'.

-- Init value
INI=1
-- Final value
FIN=100
--
for i=INI,FIN do
    -- use a lua table to simplify the verifications and output generation
    t={}
    t[#t+1] = (i%3==0) and 'Crackle' or nil
    t[#t+1] = (i%5==0) and 'Pop' or nil
    -- if 't' has any component is because 'i' satisfies a(the) condition(s)
    out = (#t==0) and i or table.concat(t)
    print(out)
end

