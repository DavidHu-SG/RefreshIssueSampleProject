//
//  ChildViewB.swift
//  RefreshIssueSampleProject
//
//  Created by David Hu on 18/10/23.
//

import SwiftUI

struct ChildViewB: View {
    @Binding var isPresent: Bool
    
    var body: some View {
        VStack {
            List {
                ForEach (0..<20, id:\.self) { index in
                    Text("Child View B Line \(index)")
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

struct ChildViewB_Previews: PreviewProvider {
    static var previews: some View {
        ChildViewB(isPresent: .constant(false))
    }
}
