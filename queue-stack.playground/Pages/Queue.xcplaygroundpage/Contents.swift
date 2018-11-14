struct Queue {
    private var array: [Int] = []
    mutating func push(_ n: Int) {
        array.append(n)
    }
    func peek() {
        array.forEach { print($0) }
    }
    mutating func pop() -> Int? {
        guard !array.isEmpty else {
            return nil
        }
        return array.removeFirst()
    }
}

class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(_ value: T) {
        self.value = value
    }
}

struct LinkedListQueue<T> {
    private var head: Node<T>?
    mutating func push(_ object: T) {
        guard var node = head else {
            head = Node(object)
            return
        }
        while let next = node.next {
            node = next
        }
        node.next = Node(object)
    }
    
    mutating func push() -> Node<T>? {
        guard let head = head else{
            return nil
        }
        self.head = head.next
        return head
    }
}
