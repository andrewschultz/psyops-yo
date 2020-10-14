import sys
import os
from collections import defaultdict

my_words = defaultdict(bool)
processed_yet = defaultdict(bool)

lowest_word = 1

def findall(p, s):
    '''Yields all the positions of
    the pattern p in the string s.'''
    i = s.find(p)
    while i != -1:
        yield i
        i = s.find(p, i+1)

def char_first_find(my_word):
    ch = my_word[0:2]
    return [i for i, ltr in enumerate(my_word) if ltr == ch and i == 0]

def find_overlaps(my_word):
    ary = char_first_find(my_word)
    m2 = my_word * 2
    for x in ary:
        if x <= len(my_word) / 2: continue
        y = m2[x*2:2*len(my_word)]
        print(my_word, y, my_word + y)

def read_stuff_in(file_name):
    with open(file_name) as file:
        for (line_count, line) in enumerate (file, 1):
            ll = line.lower().strip()
            if ll not in my_words:
                my_words[ll] = os.path.basename(file_name)

file_list = [ "c:/writing/dict/brit-1word.txt" ]
#file_list = [ "c:/writing/dict/brit-1word.txt", "c:/writing/dict/firsts.txt", "c:/writing/dict/lasts.txt" ]
# first we read in everything

try:
    lowest_word = int(sys.argv[1])
    if lowest_word < 1: sys.exit("Lowest word size must be positive.")
except:
    print("You can use a number as an argument for the shortest word.")

for x in file_list:
    read_stuff_in(x)

# then we check how it is different

count = 0

for x in my_words:
    l2 = x[0:2]
    for q in range(lowest_word, 1 + len(x) // 2):
        if x[:q] != x[-q:]: continue
        if x[q:-q] in my_words:
            count += 1
            print(q, x, '+', x[q:-q], '=', x[:-q] * 2, count, my_words[x], my_words[x[q:-q]])
