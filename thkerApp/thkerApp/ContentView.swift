//
//  ContentView.swift
//  thkerApp
//
//  Created by rawan alamirah on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    @State var counters: [Int] = [0, 0, 0]

    var body: some View {
        VStack(alignment: .trailing){
            ThekrButton(counter: $counters[0], label: "استغفر الله")
            ThekrButton(counter: $counters[1], label: "سبحان الله وبحمده")
            ThekrButton(counter: $counters[2], label: "الحمدلله")
            
            
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThekrButton: View {
    @Binding var counter: Int
    let label: String
    
    var body: some View{
     HStack{
         Text(label)
            .font(.largeTitle)
        Button(action: {
            counter += 1
        }, label: {
            Text("\(counter)")
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
            
        })
    }
    }
    
}
