graph = {
    "s": {"a":3, "b":2},
    "a": {"c":4, "d":1},
    "b": {"e":3, "f":1},
    "e": {"h":5},
    "f": {"i":2,"g":3},
    "c": {},
    "d": {},
    "h": {},
    "i": {},
    "g": {},
}

heuristic = {
    "s":13,
    "a":12,
    "b":4,
    "c":7,
    "d":3,
    "e":8,
    "f":2,
    "g":0,
    "h":4,
    "i":9,
}

def gbfs(graph,heuristic,start_node,goal_node):
    visited = set()
    queue = [(heuristic[start_node],[start_node])]
    while queue:
        (h,path) = queue.pop(0)
        current_node = path[-1]
        if current_node == goal_node:
            return path
        visited.add(current_node)
        for neighbor, distance in graph[current_node].items():
            if neighbor not in visited:
                new_path = path + [neighbor]
                queue.append((heuristic[neighbor], new_path))
        queue.sort()
    return None

print("Greedy Based First Search: ")
start_node = input("Enter the start node: ")
goal_node= input("Enter the goal node: ")

traversed_path = gbfs(graph,heuristic,start_node,goal_node)

if traversed_path:
    print("Goal node found through: ", traversed_path)
else:
    print("Goal node not found!")
