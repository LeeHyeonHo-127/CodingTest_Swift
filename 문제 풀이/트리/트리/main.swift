/*
 문제
 루트 없는 트리가 주어진다. 이때, 트리의 루트를 1이라고 정했을 때, 각 노드의 부모를 구하는 프로그램을 작성하시오.

 입력
 첫째 줄에 노드의 개수 N (2 ≤ N ≤ 100,000)이 주어진다. 둘째 줄부터 N-1개의 줄에 트리 상에서 연결된 두 정점이 주어진다.

 출력
 첫째 줄부터 N-1개의 줄에 각 노드의 부모 노드 번호를 2번 노드부터 순서대로 출력한다.
 */

import Foundation

/*

private var N = Int(readLine()!)!
private var result = ""

private var parentArray = Array(repeating: 0, count: N+1)
private var tempArray: [[Int]] = []


for _ in 1...N-1 {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    
    
    if input[0] == 1{
        parentArray[input[1]] = 1
    }
    
    else if input[1] == 1{
        parentArray[input[0]] = 1
    }
    
    else if parentArray[input[1]] == 0 && parentArray[input[0]] != 0 {
        parentArray[input[1]] = input[0]
    }
    
    else if parentArray[input[0]] == 0 && parentArray[input[1]] != 0 {
        parentArray[input[0]] = input[1]
    }
    else { tempArray.append(input) }
}

while !tempArray.isEmpty {
    tempArray.forEach{
        var input = $0
        
        if input[0] == 1{
            parentArray[input[1]] = 1
            tempArray.removeFirst()
        }
        
        else if input[1] == 1{
            parentArray[input[0]] = 1
            tempArray.removeFirst()
        }
        
        else if parentArray[input[1]] == 0 && parentArray[input[0]] != 0 {
            parentArray[input[1]] = input[0]
            tempArray.removeFirst()
        }
        
        else if parentArray[input[0]] == 0 && parentArray[input[1]] != 0 {
            parentArray[input[0]] = input[1]
            tempArray.removeFirst()
        }
        else {
            tempArray.append(input)
            tempArray.removeFirst()
        }
        
    }
    
}



for i in 2...N {
    result += "\(parentArray[i]) "
}


print(result)
*/



import Foundation

private var file = FileIO()
private var N = file.readInt()
private var result = ""

private var parentArray = Array(repeating: 0, count: N+1)
private var tempArray: [[Int]] = []


for _ in 1...N-1 {
    var input1 = file.readInt()
    var input2 = file.readInt()
    
    if input1 == 1{
        parentArray[input2] = 1
    }
    
    else if input2 == 1{
        parentArray[input1] = 1
    }
    
    else if parentArray[input1] == 0 {
        parentArray[input1] = input2
    }
    
    else if parentArray[input2] == 0 {
        parentArray[input2] = input1
    }
    else { tempArray.append([input1, input2]) }
}

while !tempArray.isEmpty {
    tempArray.forEach{
        var input = $0
        
        if input[0] == 1{
            parentArray[input[1]] = 1
            tempArray.removeFirst()
        }
        
        else if input[1] == 1{
            parentArray[input[0]] = 1
            tempArray.removeFirst()
        }
        
        else if parentArray[input[1]] == 0 && parentArray[input[0]] != 0 {
            parentArray[input[1]] = input[0]
            tempArray.removeFirst()
        }
        
        else if parentArray[input[0]] == 0 && parentArray[input[1]] != 0 {
            parentArray[input[0]] = input[1]
            tempArray.removeFirst()
        }
        else {
            tempArray.append(input)
            tempArray.removeFirst()
        }
        
    }
    
}

for i in 1...N {
    result += "\(parentArray[i]) "
}




print(result)






final class FileIO {
    private var buffer: [UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput){
        buffer = Array(fileHandle.readDataToEndOfFile()+[UInt8(0)])
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1}
        
        return buffer.withUnsafeBufferPointer{ $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 30 || now == 32 { now = read() }
        
        if now == 45 { isPositive.toggle(); now = read() }
        
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1 : -1)
    }
}

