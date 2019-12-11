import collections
from collections import Counter
#from googletrans import Translator
import goslate
gs = goslate.Goslate()
translator = {}

#translator = Translator()
subs = {}

with open ("sub.txt", 'r') as f:
    for row in f:
        _, _, _, tgt, _, src = row.split()
        subs[src] = tgt

align = collections.defaultdict(dict)
with open ("reverse.align", 'r') as f:
    for i, row in enumerate(f):
        s2t = collections.defaultdict(list)
        t2s = collections.defaultdict(list)
        for al in row.split():
            s, t = al.split('-')
            s, t = int(s), int(t)
            s2t[s].append(t)
            t2s[t].append(s)
        align[i]['s2t'] = s2t
        align[i]['t2s'] = t2s

en_vocab, af_vocab = Counter(), Counter()
with open("enaf_parallel.train.en1.en") as a, open("enaf_parallel.train.af1.af") as b:
    for row in zip(a,b):
        x, y = row
        en_vocab.update(x.split())
        af_vocab.update(y.split())

res = []
tru = []
with open("enaf_parallel.train.en1.en") as a, open("enaf_parallel.train.af1.af") as b:
    for k, row in enumerate(zip(a,b)):
        x, y = row
        tmp_tgt = y.split()
        tmp_src = x.split()
        flag = False
        for i, ch in enumerate(x.split()):
            #print(align[k]['s2t'][i])
            if len(align[k]['s2t'][i]) == 0: continue
            it = align[k]['s2t'][i][0]

            if ch in subs and len(align[k]['s2t'][i]) == 1 and len(align[k]['t2s'][it]) == 1:
                flag = True
                if ch.lower() == subs[ch].lower():
                    src_rep = subs[ch]
                    tgt_rep = tmp_tgt[it]
                else:
                    src_rep = subs[ch]
                    if src_rep in translator:
                      tgt_rep = translator[src_rep]
                    else:
                      tgt_rep = gs.translate(str(src_rep), 'af')
                      translator[src_rep] = tgt_rep
                      print(src_rep, tgt_rep)
                if tgt_rep not in af_vocab:
                  continue
                if subs[ch].upper() == subs[ch]:
                    tgt_rep = tgt_rep.upper()
                elif subs[ch].lower() == subs[ch]:
                    tgt_rep = tgt_rep.lower()
                else:
                    if subs[ch][0] == subs[ch][0].upper():
                        tgt_rep = tgt_rep[0].upper() + tgt_rep[1:]
                    else:
                        tgt_rep = tgt_rep.lower()
                tmp_src[i] = src_rep
                tmp_tgt[it] = tgt_rep


        if flag:
            res.append(" ||| ".join([' '.join(tmp_src), ' '.join(tmp_tgt)]))
            tru.append(" ||| ".join([x.strip('\n'), y]))

with open("new_data.af", 'w') as b, open("new_data.en", 'w') as a:
  en, af = [], []
  for row in res:
    e, f = row.split("|||")
    en.append(e)
    af.append(f)
  a.write('\n'.join(en))
  b.write('\n'.join(af))

"""print(subs)

print(align[0])
print(align[1])"""
