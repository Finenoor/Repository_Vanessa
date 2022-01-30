import Foundation
enum GuessNumberGameError : Error{

    case wrongNumbersss
}

class GuessNumerGame {

    var targetNumber = 10
    
    func guess(number: Int) throws {
    
        guard number == targetNumber else {
        
            throw GuessNumberGameError.wrongNumbersss
        }
    print("Guess the right number: \(targetNumber)")
    
    }
}
let test = GuessNumerGame()
do
{
  try test.guess(number: 20)
}catch let error
 {
 print("error --\(error)")
 }

//Read the code above first and paste it in the playground file, there is an error inside the code. Please solve the error by adding additional code in the file. Do not remove or modify the code above. Call guess(number:) and pass 20 as the argument after you fix the problem.


