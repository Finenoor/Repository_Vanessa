//Declare a class Animal with property gender and method eat(). The data type of gender should be enum Gender as below and when you call eat() method, it will print I eat everything!
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender:Gender
    
    init(gender: Gender){
        self.gender = gender
    }
    func eat(){
        print("I eat everything!")
    }
}
let food = Animal(gender: Gender.female)
food.eat()

//2.Declare three classes: Elephant, Tiger, Horse that inherits from Animal and override the eat method to print what they usually eat.
class Elephant : Animal {
    override func eat() {
        print("I eat grass")
    }
}
class Tiger : Animal {
    override func eat() {
        print("I eat meat")
    }
}
class Horse : Animal {
    override func eat() {
        print("I eat grass, too")
    }
}

//3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger, elephant, and horse are instances of class Tiger, Elephant, and Horse, respectively.
class Zoo {
    var weekHot : Animal
    init(weeklyHot : Animal){
        self.weekHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot:Tiger(gender: Gender.undefined))
zoo.weekHot.eat()

//4.What’s the difference between Struct and Class ?
//:Structures are value types, values(An instance of a structure is conceptually a value), copy(Structure copy their value when used in a new place) and immutable(Structures are immutable when they're declared as constants); Classes are reference types, objects(Class instances are objects with identity), share(Classes share their data) and mutable(Classes remain mutable even if they're constants).
//Structs like tuples which you can group a set of related data together, and unlike tuples, structures can also contain methods. Methods represent what a structure does.
// Wheras,Classes are a lot like structures, they have properties,methods and initializers. But classes are  reference types, instead of value types.
//5. What’s the difference between instance method and type method ?
/*
 Instance methods are methods that you call on an instance of a particular type.  Instance methods是某個instance呼叫的方法(call on an instance)

 You can also define a Type Methods  called on the type itself. These kinds of methods are called type methods. 你也可以定義一個Type Methods，是型別本身呼叫的方法(called on itself)

You indicate a Type Method by writing the static keyword before the method’s func keyword. 在 func 前加上static，來指定Type Methods

Classes can use the class keyword instead, to allow subclasses to override the superclass’s implementation of that method.Class還可以用關鍵字 class 來指定，允許子類別(subclasses)重寫父類別(spperclasses)該方法的實現。

Type methods are called with dot syntax, like instance methods. However, you call type methods on the type, not on an instance of that type. Type methods屬於特定型別 ( 類別、結構或列舉 ) 本身的方法，可以不需要特別先生成一個實例(instance)。
 */
//6. What does Initilizer do in class and struct ?
//-Initializer is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that's required before the new instance is ready for use.
//7. What does self mean in an instance method and a type method ?
//-Every instance of a type has an implicit property called self , which is exactly equivalent to the instance itself. You use the self property to refer to the current instance within its own instance methods.
//-self is a property on the instance that refers to itself. It's used to access class, structure and enumeration instance within methods. When self is accessed in a type method ( static func or class func ), it refers to the actual type (rather than an instance).
//8. What’s the difference between reference type and value type ?
//-Value Type: Value type is that type which created directly on memory.Every Instance keep unique copy of data .When assign or copy it created a complete new data .
//-Reference Type : A Type That share a single Data. When initialised once and assign to a variable or contact or a function its return a reference .
