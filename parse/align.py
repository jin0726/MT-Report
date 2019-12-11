res = []
with open("enaf_parallel.train.af", 'r') as a, open ("enaf_parallel.train.en", 'r') as b:
    for row in zip(b, a):
        x, y = row
        x = x.strip('\n')
        y = y.strip('\n')
        new_row = " ||| ".join([x, y])
        res.append(new_row)
        #break

with open("for_align.txt", 'w') as w:
    w.write("\n".join(res))
