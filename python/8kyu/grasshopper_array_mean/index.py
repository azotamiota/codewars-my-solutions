def find_average(nums):
    if len(nums) > 0:
        return sum(nums) / len(nums)
    else:
        return 0
print(find_average([1,3,5,8]))
