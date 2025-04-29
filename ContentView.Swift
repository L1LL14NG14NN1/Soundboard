import SwiftUI

struct ContentView: View {
    // ADD ABOVE var body  
    @State private var hungerLevel = 5  
    @State private var happinessLevel = 8  
    @State private var energyLevel = 7
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect() 
    struct ActionButton: View {
        let label: String
        let emoji: String
        let color: Color
        
        var body: some View {
            HStack {
                Text(emoji)
                Text(label)
            }
            .padding()
            .background(color.opacity(0.2))
            .cornerRadius(8)
        }

    }


    
    var body: some View {
        ZStack {
            
            Image("silly")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            // PET (Second Layer)  
            Image("doggy")  
                .resizable()  
                .frame(width: 200, height: 200)  
            
                .padding()
                .background(Color.white.opacity(0.8))
                .cornerRadius(10)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.top, 40)
                .padding(.leading,20)
            
            VStack(alignment: .leading) { // Left-align text
                Text("Hunger: \(hungerLevel)/10")
                    .font(.headline)
                Text("Happiness: \(happinessLevel)/10")
                    .font(.headline)
                Text("Energy: \(energyLevel)/10")
                    .font(.headline)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white.opacity(0.8))
                    .shadow(radius: 5)
            )
            .frame(maxWidth: .infinity, alignment: .topLeading) // Stick to top-left
            .padding(.top, 40) // Add space from top                
                
                
                
            }
        VStack {  
            Spacer() // Push to bottom  
            HStack {  
                Button("Feed 🍎") {  
                    hungerLevel = min(hungerLevel + 1, 10) // Never go over 10  
                }  
                Button("Play 🎾") {  
                    happinessLevel = min(hungerLevel + 1, 10) // Never go over 10  
                }  
                Button("Nap 😴") {  
                    energyLevel = min(energyLevel + 1, 10) // Never go over 10  
                } 
                    .padding(.top, 40)
                    .padding(.leading,20)

            }
        }.onReceive(timer) { _ in  
            hungerLevel = max(hungerLevel - 1, 0)  
        } 

        

        }
    }

