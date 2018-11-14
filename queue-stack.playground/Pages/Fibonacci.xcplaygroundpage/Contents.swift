//  func fibonacci(_ n: Int) -> Int {
//      if n <= 0 { 
//          return 0
//      } else if n == 1 {
//          return 1
//      }
//      return fibonacci(n - 1) + fibonacci(n - 2)
//  }
//  
//  fibonacci(5)

func fibonacci(_ n: Int, memo: [Int]? = nil) -> Int {
    var m = memo ?? Array(repeating: 0, count: n + 1)
    if n <= 0 || n == 1 { 
        return n 
    } else if m[n] > 0 {
        return m[n]
    }
    m[n] = fibonacci(n - 1, memo: m) + fibonacci(n - 2, memo: m)
    return m[n]
}

fibonacci(5)
