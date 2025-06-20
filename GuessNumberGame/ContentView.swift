import SwiftUI

struct ContentView: View {
    @State private var guessText: String = ""
    @State private var target: Int = Int.random(in: 1...100)
    @State private var result: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Guess Which Number I'm Thinking Of?")
                .font(.title2)
                .multilineTextAlignment(.center)
            TextField("Enter your guess", text: $guessText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            Button("Submit Guess") {
                checkGuess()
            }
            Text(result)
                .padding()
        }
        .padding()
    }
    
    func checkGuess() {
        guard let guess = Int(guessText) else {
            result = "Please enter a valid number."
            return
        }
        let difference = abs(target - guess)
        result = "I was thinking of \(target).\nYour guess \(guess) was \(difference) away."
        target = Int.random(in: 1...100)
        guessText = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
