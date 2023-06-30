from typing import List

class Solution:
    TC0 = [2,1,5,6,6,2,3]
    TC1 = [1,1]
    def largestRectangleArea(self, heights: List[int]) -> int:
        maxArea = 0
        stack = [] # pair: (index, height)
        for i, h in enumerate(heights):
            print(stack)
            start = i
            while stack and stack[-1][1] > h:
                print("while:", stack)
                index, height = stack.pop()
                maxArea = max(maxArea, height * (i - index))
                start = index
            stack.append((start, h))
        print(stack)
        for i, h in stack:
            maxArea = max(maxArea, h * (len(heights) - i))
        return maxArea

print(Solution().largestRectangleArea(Solution.TC0))

# enemies = [
# 	{'type': 'Orc', 'health': 0},
# 	{'type': 'Orc', 'health': 0},
# 	{'type': 'Orc', 'health': 0},
# 	{'type': 'Orc', 'health': 0}
# ]
# if any(enemy['health'] for enemy in enemies):
# 	print('Battle is not over!')
# else:
# 	print('No more enemies remain!')

# count = 0
# while 1:
# 	count += 1
# 	print("Hello", count)
# 	if count >= 15:
# 		break

# def printGrid(G):
# 	for R in G:
# 		print(R)

# def printGrid(G):
# 	for R in G:
# 		print(R)

# G = [
# 	[1, 1, 1, 1, 0],
# 	[1, 1, 1, 0, 0],
# 	[1, 1, 1, 0, 0],
# 	[1, 1, 0, 0, 1]
# 	]

# printGrid(G)

# def BFS(E):
# 	print("test")

# output = 0
# for R in G:
# 	for E in R:
# 		if (E == 2):
# 			continue
# 		BSF(E)
# 		output += 1
