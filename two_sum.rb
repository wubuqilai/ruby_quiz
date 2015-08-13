# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end

    # def next node
    # 	@next = node
    # end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    res = []
    while (f = l1) && (s = l2)
    	p f.val 
    	res << f.val + s.val
    	l1 = f.next
    	l2 = s.next
    end
    p res
end

f3 = ListNode.new(3)
f4 = ListNode.new(4)
f4.next=(f3)
f2 = ListNode.new(2)
f2.next=(f4)

p f2

g5 = ListNode.new(5)
g6 = ListNode.new(6)
g4 = ListNode.new(4)
g6.next=(g4)
g5.next=(g6)

p g5

add_two_numbers(f2, g5)