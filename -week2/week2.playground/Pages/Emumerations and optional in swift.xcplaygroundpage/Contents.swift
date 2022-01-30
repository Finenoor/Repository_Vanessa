//1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
//● Please create an enum named Gasoline to model gasoline.
//● Every kind of gasoline has its price. Please create a method named getPrice in Gasoline enum that will return different prices depending on different gasoline.
//● Please establish raw value for Gasoline. The data type of raw value should be String. For example, Gasoline.oil92.rawValues should be 92.
enum Gasoline: String {
    case oil92 = "25"
    case oil95 = "27"
    case oil98 = "29"
    
    func getPrice() -> String {
        switch self{
        case.oil92 : return "25 dollars"
        case.oil95 : return "27 dollars"
        case.oil98 : return "29 dollars"
        }
    }
}
let GasolinePrice1 = Gasoline.oil92.rawValue
let GasolinePrice2 = Gasoline.oil95.rawValue
let GasolinePrice3 = Gasoline.oil98.rawValue
let NewPrice1 = Gasoline.oil92.getPrice()
let NewPrice2 = Gasoline.oil95.getPrice()
let NewPrice3 = Gasoline.oil98.getPrice()



/*enum Gasoline: Int { 原本是用enum來定義汽油是整數的話，應該要分開定義，先定義價格，
    case oil92 = 26
    case oil95 = 27
    case oil98 = 28
    case diesel = 25
}
let getPrice = Gasoline.oil92
print(Gasoline.oil92.rawValue)
*/

/*enum Gasoline: String{
    case oil92 = "26"
    case oil95 = "27"
    case oil98 = "28"
    case diesel = "25" //先用enum汽油整數
}

func getPrice(in gasoline: Gasoline) -> String { //用函式取得價錢，參數是從汽油取得價錢返回整數
    switch gasoline { //用switch
    case .oil92:
        return Gasoline.oil92.rawValue //如果沒有加點的話會變成在範圍內找不到oil92這個值
    case .oil95:
        return Gasoline.oil95.rawValue
    case .oil98:
        return Gasoline.oil98.rawValue
    case .diesel:
        return Gasoline.diesel.rawValue
    }
}

getPrice(in: Gasoline.oil92)
getPrice(in: Gasoline.oil95)
getPrice(in: Gasoline.oil98)
getPrice(in: Gasoline.diesel)
 */
//● Please explain what enum associated value is and how it works.
//Associated value is different from raw value, it can be assigned to a variable or constant in enum and it can be different values inside the enum.
//EX: enum Barcode {
       //case upc(Int, Int, Int)
      //case qrCode(String)



//2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the value of a will be nil or Int. You should have learned how to deal with Optional.
//● People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
//● Please create a People instance and use guard let to unwrap the pet property.
//● Please create another People instance and use if let to unwrap the pet property.
/*class People{
    var pet: String?
    func petNotAllowed(){
        guard let pet = self.pet else{
            print("I don't keep pet.")
            return
        }
        print(pet)
    }*/
    /*func petAllowedOrNot(){
        if self.pet != nil {
            print("I do keep pet")
        } else {
            print("I don't keep pet.")
        }
    }
}
*/
class Pet{
    var name:String
    init(name:String){
        self.name = name
    }
}

class PeopleHavePet{
    var pet:Pet?
    init(pet:Pet?){
        if let _pet = pet {
            print("People can have pets.")
            self.pet = _pet
            return
        }
        print("People can't have pet.")
    }
}
PeopleHavePet(pet:Pet(name:"Cooper"))
PeopleHavePet(pet:nil)
