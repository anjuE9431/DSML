lines_with_consecutive_ones=[]
file=open("file2.txt","r")
for line in file:
    if 'll' in line:
        lines_with_consecutive_ones.append(line.strip())
print(lines_with_consecutive_ones)
print("Lines containing two consecutive 'l's:")
for line in lines_with_consecutive_ones:
    print(line)
