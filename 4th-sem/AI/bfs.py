import queue
adj_list = {
    "a": ["b", "c"],
    "b": ["d", "e"],
    "c": ["f", "g"],
    "d": ["h", "i"],
    "e": [],
    "f": ["j"],
    "g": [],
    "h": [],
    "i": [],
    "j": [],
}

queue = []
visited = []
output = []

def bfs(visited, graph, start_node):
    queue.append(start_node)
    visited.append(start_node)

    while queue:
        m = queue.pop(0)
        output.append(m)
        
        for neighbour in graph[m]:
            if neighbour not in visited:
                visited.append(neighbour)
                queue.append(neighbour)

    print(output)

print("--------Output---------")
start_node = input("Enter the start node: ")
bfs(visited, adj_list, start_node)
