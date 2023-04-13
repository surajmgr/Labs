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

closedList = {}
traversedoutput = []


for u in adj_list.keys():
    closedList[u]="not visited"

def dfs(u):
    closedList[u]="visited"
    traversedoutput.append(u)
    for v in adj_list[u]:
        if closedList[v] != "visited":
            dfs(v)

print("--------Output---------")
start_node = input("Enter the start node: ")
dfs(start_node)

print("Our traversed output is = ",traversedoutput);