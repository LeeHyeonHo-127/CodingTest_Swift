/*
 문제
 도현이는 바구니를 총 N개 가지고 있고, 각각의 바구니에는 1번부터 N번까지 번호가 순서대로 적혀져 있다. 바구니는 일렬로 놓여져 있고, 가장 왼쪽 바구니를 1번째 바구니, 그 다음 바구니를 2번째 바구니, ..., 가장 오른쪽 바구니를 N번째 바구니라고 부른다.

 도현이는 앞으로 M번 바구니의 순서를 역순으로 만들려고 한다. 도현이는 한 번 순서를 역순으로 바꿀 때, 순서를 역순으로 만들 범위를 정하고, 그 범위에 들어있는 바구니의 순서를 역순으로 만든다.

 바구니의 순서를 어떻게 바꿀지 주어졌을 때, M번 바구니의 순서를 역순으로 만든 다음, 바구니에 적혀있는 번호를 가장 왼쪽 바구니부터 출력하는 프로그램을 작성하시오.

 입력
 첫째 줄에 N (1 ≤ N ≤ 100)과 M (1 ≤ M ≤ 100)이 주어진다.

 둘째 줄부터 M개의 줄에는 바구니의 순서를 역순으로 만드는 방법이 주어진다. 방법은 i j로 나타내고, 왼쪽으로부터 i번째 바구니부터 j번째 바구니의 순서를 역순으로 만든다는 뜻이다. (1 ≤ i ≤ j ≤ N)

 도현이는 입력으로 주어진 순서대로 바구니의 순서를 바꾼다.

 출력
 모든 순서를 바꾼 다음에, 가장 왼쪽에 있는 바구니부터 바구니에 적혀있는 순서를 공백으로 구분해 출력한다.
 */

//MARK: 내 풀이
/*
let MN = readLine()!.split(separator: " ").map{Int($0)!}
var array = Array(1...MN[0])

for _ in 0..<MN[1]{
    let ij = readLine()!.split(separator: " ").map{Int($0)!}
    var i = ij[0] - 1
    var j = ij[1] - 1
    while(j - i > 0){
        let temp = array[j]
        array[j] = array[i]
        array[i] = temp
        i+=1
        j-=1
    }
}
print(array.map{String($0)}.joined(separator: " "))
*/

//MARK: 깔끔한 풀이
/*
let MN = readLine()!.split(separator: " ").map{Int($0)!}
var array = Array(1...MN[0])

for _ in 0..<MN[1]{
    let i = readLine()!.split(separator: " ").map{Int($0)!-1}
    array.replaceSubrange(i[0]...i[1], with: array[i[0]...i[1]].reversed())
}
print(array.map{String($0)}.joined(separator: " "))
*/
