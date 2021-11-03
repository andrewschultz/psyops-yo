def print_out(my_file):
    count = 0
    this_count = 0
    x_last = -1
    with open(my_file) as file:
        for (line_count, line) in enumerate (file, 1):
            ll = line.lower().strip()
            #if len(ll) % 2: continue
            x = (len(ll) + 1) // 2 - 1
            if ll[:x] == ll[-x:]:
                if x != x_last:
                    x_last = x
                    this_count = 0
                count += 1
                this_count += 1
                print(this_count, count, ll, ll[x:-x])

#print_out("c:/writing/dict/brit-1word.txt")
print_out("c:/writing/dict/firsts.txt")
print_out("c:/writing/dict/lasts.txt")
