//
//  ContentView.swift
//  Kadai4
//
//  Created by Hajime on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    @State var resultNumber = 0
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 15) {
                    Text(String(resultNumber))
                    Button {
                        countUp()
                    } label: {
                        Text("+1")
                    }
                    Button {
                        clearResultNumber()
                    } label: {
                        Text("clear")
                    }
                }
                .padding()
                Spacer()
            }
            Spacer()
        }
    }
    
    func countUp() {
        resultNumber += 1
    }
    
    func clearResultNumber() {
        resultNumber = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
