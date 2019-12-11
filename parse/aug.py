from collections import Counter
import nltk
from nltk.corpus import wordnet
import csv

train_vocab, val_vocab, ext_vocab = set(), set(), set()
train_cnt, val_cnt, ext_cnt, total_cnt = Counter(), Counter(), Counter(), Counter()
with open("enaf_parallel.train.en") as f:
    for row in f:
        r = row.split()
        train_vocab |= set(r)
        train_cnt.update(r)
        total_cnt.update(r)

with open("enaf_parallel.dev.en") as a, open("enaf_parallel.test.en") as b:
    for row in zip(a, b):
        dev, test = row
        dev = dev.split()
        test = test.split()
        val_vocab |= set(dev)
        val_vocab |= set(test)
        val_cnt.update(dev)
        val_cnt.update(test)
        total_cnt.update(dev)
        total_cnt.update(test)

with open("enaf_parallel.train.en") as f:
    for row in f:
        r = row.split()
        ext_vocab |= set(r)
        ext_cnt.update(r)


miss = val_vocab - train_vocab
rare = {i for i in total_cnt if i not in train_vocab or total_cnt[i] < 2}
diff = {}
for word in val_cnt:
    if word in train_cnt:
        diff[word] = val_cnt[word] - train_cnt[word]
    else:
        diff[word] = val_cnt[word]

output = (sorted(miss, key = lambda x: val_cnt[x], reverse=True))
"""print([(i, val_cnt[i]) for i in output][:20])
print(sorted(val_cnt.items(), key=lambda x: x[1], reverse=True)[:20])
print(sorted(train_cnt.items(), key=lambda x: x[1], reverse=True)[:20])
print("diff", sorted(diff.items(), key=lambda x: x[1], reverse=True)[:20])"""
res = [(i, val_cnt[i], ext_cnt[i])for i in ext_vocab if i in miss]

repalce = {}
i = 0
for m in miss:
    i += 1
    tmp_max, tmp_candidate = 0, ""
    for pos in (".n", ".v", ".a", ".r", ".s"):
        try:
            w1 = wordnet.synset(m + pos + ".01")
            #print("w1", w1)
        except:
            continue
        for word in train_vocab:
            try:
                w2 = wordnet.synset(word + pos + ".01")
            except:
                continue
            score = w1.wup_similarity(w2)
            if score == None:
                continue
                #print(w1, w2)
            if score > tmp_max:
                tmp_max = score
                tmp_candidate = word
                #print(tmp_candidate)
    repalce[m] = tmp_candidate
    if tmp_candidate:
        print(i, ":", len(miss), m, ":", tmp_candidate)
#print(repalce)
with open("sub", 'w') as w:
    w.writerow("\n".join(repalce))
#print("ext", sorted(res, key = lambda x: x[1], reverse=True))
"""print(len(miss), len(res), len(train_vocab), len(val_vocab))
print(len(rare))
print(total_cnt['Complete'], total_cnt['complete'], total_cnt['Latitude'], total_cnt["latitude"])"""
