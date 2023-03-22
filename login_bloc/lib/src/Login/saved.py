def mergeSort(left, right, arr):
    
    if left == right:
        return [arr[left]]
    
    mid = left + (right - left) // 2
    
    left_half = mergeSort(left, mid, arr)
    right_half = mergeSort(mid + 1, right, arr)
    
    l = 0
    r = 0
    answer = []

    while l < len(left_half) and r < len(right_half):
        
        if left_half[l] <= right_half[r]:
            answer.append(left_half[l])
            l += 1
        
        else:
            answer.append(right_half[r])
            r += 1
    
    while l < len(left_half):
        answer.append(left_half[l])
        l += 1
    
    while r < len(right_half):
        answer.append(right_half[r])
        r += 1
    
    return answer
def quickSort(array):
    if not array:
        return []
    if len(array) == 1:
        return [array[0]]
    pivot = array[0]

    return quickSort([x for x in array[1:] if x < array[0]]) + [pivot] + quickSort([y for y in array[1:] if y >= array[0]])

def test():
    assert quickSort([3, 0, 2, -5, 10, 2]) == [-5, 0, 2, 2, 3, 10], "Not Implemented Properly"

    assert quickSort([1, 2, 3]) == [1, 2, 3],  "Not Implemented Properly"
    
    assert quickSort([3, 2, 1]) == [1, 2, 3], "Not Implemented Properly"
    
    assert quickSort([7,6,3,2,67,9,6,56,3]) == [2, 3, 3, 6, 6, 7, 9, 56, 67], "Not Implemented Properly"
    
    print("Great Job !!!")
test()
