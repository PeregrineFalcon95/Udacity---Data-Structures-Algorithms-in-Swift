import Foundation

class Classy {
    
    var items: [String]
    var classiness: Int
    
    private let point : [String: Int] = [
        "tophat"  : 2,
        "bowtie"  : 4,
        "monocle" : 5
    ]
    
    init() {
        self.items = []
        self.classiness = 0
    }
    
    //Write your addItem function here
    func addItem(_ item: String){
        items.append(item)
        if let val = point [ item ] {
            classiness += val
        }
    }
    //Write your getClassiness function here
    func getClassiness() -> Int{
        return classiness
    }
}

//Test Cases

let me = Classy()

print(me.getClassiness()) // Should be 0

me.addItem("tophat")
print(me.getClassiness()) // Should be 2

me.addItem("bowtie")
me.addItem("jacket")
me.addItem("monocle")
print(me.getClassiness()) // Should be 11

me.addItem("bowtie")
print(me.getClassiness()) // Should be 15
