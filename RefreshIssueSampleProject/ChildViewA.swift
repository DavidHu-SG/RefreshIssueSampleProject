//
//  ChildViewA.swift
//  RefreshIssueSampleProject
//
//  Created by David Hu on 18/10/23.
//

import SwiftUI

struct ChildViewA: View {
    @Binding var isPresent: Bool
    
    var body: some View {
        VStack {
            List {
                ForEach (0..<20, id:\.self) { index in
                    Text("Child View A Line \(index)")
                }
            }
            .listStyle(.plain)
            
            Button {
                isPresent.toggle()
            } label: {
                Text("dismiss")
            }
        }
    }
}

struct ChildViewA_Previews: PreviewProvider {
    static var previews: some View {
        ChildViewA(isPresent: .constant(false))
    }
}
