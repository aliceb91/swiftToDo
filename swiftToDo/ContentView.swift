//
//  ContentView.swift
//  swiftToDo
//
//  Created by Alice Birkett on 04/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var todo1 = false
    @State private var todo1Text = ""
    @State private var todo2 = false
    @State private var todo2Text = ""
    @State private var todo3 = false
    @State private var todo3Text = ""
    @State private var todo4 = false
    @State private var todo4Text = ""
    @State private var todo5 = false
    @State private var todo5Text = ""
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .foregroundColor(.accentColor)
                .aspectRatio(contentMode: .fit)
            HStack{
                Text("Todos!")
                    .font(.system(size: 36))
                Text("Toggle them all off!")
            }
            HStack{
                TextField("Add a Todo here!", text: $todo1Text)
                Toggle("", isOn: $todo1)
            }
            HStack{
                TextField("Add a Todo here!", text: $todo2Text)
                Toggle("", isOn: $todo2)
            }
            HStack{
                TextField("Add a Todo here!", text: $todo3Text)
                Toggle("", isOn: $todo3)
            }
            HStack{
                TextField("Add a Todo here!", text: $todo4Text)
                Toggle("", isOn: $todo4)
            }
            HStack{
                TextField("Add a Todo here!", text: $todo5Text)
                Toggle("", isOn: $todo5)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
