"""
Given an array of integers, find the one that appears an odd number of times.
There will always be only one integer that appears an odd number of times.
Examples
[7] should return 7, because it occurs 1 time (which is odd).
[0] should return 0, because it occurs 1 time (which is odd).
[1,1,2] should return 2, because it occurs 1 time (which is odd).
[0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
[1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

"""
#mine
def find_odd(arr):
    freq = {}
       # Count the frequency of each integer in the list
    for num in arr:
        if num in freq:
            freq[num] += 1
        else:
            freq[num] = 1
    # Find and return the integer with an odd frequency
    for key, value in freq.items():
        if value % 2 != 0:
            return key

# Test cases
print(find_odd([7]))  # 7
print(find_odd([0]))  # 0
print(find_odd([1,1,2]))  # 2
print(find_odd([0,1,0,1,0]))  # 0
print(find_odd([1,2,2,3,3,3,4,3,3,3,2,2,1]))  # 4

# Heathers:
# # Overall O(n)
# def check_which_odd(alist):
#     adict = {} #O(1)
#     for num in alist: #O(N)
#         if num in adict: #O(1)
#             adict[num] += 1 #O(1)
#         if num not in adict: #O(1)
#             adict[num] = 1 #O(1)
#     for k,v in adict.items(): #O(2n)
#         if v%2 != 0: #O(1)
#             return k #O(1)
#         else:
#             pass #O(1)