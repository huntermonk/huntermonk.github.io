struct Stack<T> {
    private var array: [T] = []
    mutating func push(_ object: T) {
        array.append(object)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let top = "----Stack----\n"
        let bottom = "\n--------"
        let middle = array.reversed().map { String(describing: $0) }.joined(separator: "\n")
        return top + middle + bottom
    }
}

var s = Stack<String>()
s.push("E6")
s.push("E5")
s.push("E4")
s.push("E3")
print(s.description)
