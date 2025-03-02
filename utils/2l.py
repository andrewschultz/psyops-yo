def print_out(my_file, long_first = False):
    count = 0
    this_count = 0
    x_last = -1
    print("Parsing", my_file)
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
                my_string = "{} {}".format(ll[x:-x].title(), ll.title()) if long_first else "{} {}".format(ll.title(), ll[x:-x].title())
                print("\"{}\" {} {}".format(my_string, this_count, count))

#print_out("c:/writing/dict/brit-1word.txt")
print_out("c:/writing/dict/firsts.txt", long_first = True)
print_out("c:/writing/dict/lasts.txt", long_first = False)
