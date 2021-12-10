# Online Python compiler (interpreter) to run Python online.
# Write Python 3 code in this online editor and run it.
print("Hello world")

# Linked List Node
class ListNode:
    def __init__(self, data):
        self.val = data
        self.next = None
 
# Create and Handle list operations
class Solution:
    def __init__(self):
        self.head = None # Head of list
 
    # Method to reverse the list
    def reverse(self):
 
        # # If head is empty or has reached the list end
        # if head is None or head.next is None:
        #     return head
 
        # # Reverse the rest list
        # rest = self.reverse(head.next)
 
        # # Put first element at the end
        # head.next.next = head
        # head.next = None
 
        # # Fix the header pointer
        # return rest
        
        prev = None
        current = self.head
        while(current is not None):
            next = current.next
            current.next = prev
            prev = current
            current = next
        self.head = prev
        
    # Returns the linked list in display format
    def __str__(self):
        linkedListStr = ""
        temp = self.head
        while temp:
            linkedListStr = (linkedListStr +
                            str(temp.val) + " ")
            temp = temp.next
        return linkedListStr
 
    # Pushes new data to the head of the list
    def push(self, data):
        temp = ListNode(data)
        temp.next = self.head
        self.head = temp
 
# Driver code
head = Solution()
head.push(20)
head.push(4)
head.push(15)
head.push(85)
 
print("Given linked list")
print(head)
 
head.reverse()
 
print("Reversed linked list")
print(head)
 
# This code is contributed by Debidutta Rath
