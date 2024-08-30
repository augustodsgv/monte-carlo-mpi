import sys, random

def get_points(n : int)->int:
    counter = 0
    for _ in range(n):
        x = random.random()
        y = random.random()
        if x ** 2 + y ** 2 <= 1:
            counter += 1

    return counter

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Falta o número de pontos")
        exit(1)
    n_points = int(sys.argv[1])

    hit_points = get_points(n_points)
    
    pi = hit_points / n_points * 4
    print(pi)
