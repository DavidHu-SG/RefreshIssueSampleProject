//
//  ContentView.swift
//  RefreshIssueSampleProject
//
//  Created by David Hu on 18/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var popupA: Bool = false
    @State var popupB: Bool = false
    
    var body: some View {
        VStack {
            List {
                ForEach (0..<20, id:\.self) { index in
                    Text("Line \(index)")
                }
            }
            .listStyle(.plain)
            .fullScreenCover(isPresented: $popupA) {
                ChildViewA(isPresent: $popupA)
            }
            .refreshable {
                await fetchData()
            }
            .fullScreenCover(isPresented: $popupB) {
                ChildViewB(isPresent: $popupB)
            }
            
            HStack {
                Button {
                    popupA.toggle()
                } label: {
                    Text("Popup A")
                }
                
                Button {
                    popupB.toggle()
                } label: {
                    Text("Popup B")
                }
            }
        }
    }
    
    func fetchData() async {
        // Simulate a delay (e.g., a network call)
        await Task.sleep(UInt64(2 * 1_000_000_000)) // Sleep for 2 seconds
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
