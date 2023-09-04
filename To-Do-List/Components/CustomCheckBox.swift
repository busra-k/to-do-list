//
//  CustomCheckBox.swift
//  To-Do-List
//
//  Created by Büşra Kocakuşaklı on 29.08.2023.
//

import SwiftUI

struct CustomCheckBox: View {
    var onCheck: (Bool) -> Void
    
    @State private var localChecked = false
    init(defaultChecked: Bool, onCheck: @escaping (Bool) -> Void) {
        localChecked = defaultChecked
        self.onCheck = onCheck
    }
    var body: some View {
        Button {
            localChecked.toggle()
            
            onCheck(localChecked)
        } label: {
            Image(systemName: localChecked ? "checkmark.circle.fill" : "circle").resizable().aspectRatio( contentMode: .fit)
        }
    }
}

struct CustomCheckBox_Previews: PreviewProvider {
    static var previews: some View {
        CustomCheckBox(defaultChecked: false) { _ in }
    }
}
