import matplotlib.pyplot as plt

def get_coord_list(file_path):
    x = []
    y = []
    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip().strip(',').strip(';')
            coords = line.split(' ')
            x.append(float(coords[0]))
            y.append(float(coords[1]))
    return x, y

file1 = './data/p50-0.poly'
file2 = './data/p50-1.poly'

x1,y1 = get_coord_list(file1)
x2,y2 = get_coord_list(file2)

plt.figure()

plt.plot(x1, y1, marker='o', linestyle='-', label='Polygon 1')
plt.fill(x1, y1, 'b', alpha=0.3)

plt.plot(x2, y2, marker='o', linestyle='-', label='Polygon 2')
plt.fill(x2, y2, 'g', alpha=0.3)

plt.legend()

plt.grid(True)
plt.savefig('./result.png')