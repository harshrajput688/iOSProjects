//
//  AddView.swift
//  ToDoApp
//
//  Created by Harsh Rajput on 08/05/23.
//

import SwiftUI

struct AddView: View {
    
    //dismiss the view
    @Environment(\.presentationMode) var presentaionMode
    
    @EnvironmentObject var listviewmodel: ListViewModel
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("write some thing here....", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 0.621, saturation: 0.048, brightness: 0.916))
                    .cornerRadius(10)
                
                Button(action: saveButtonTapped, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                   
                        .background(Color("accentColor1"))
                })
                
            }.padding(16)
        }.navigationTitle("Add an Item")
            .alert(isPresented: $showAlert, content: getAlert)
    }

    func saveButtonTapped(){
        if textIsValid(){
            listviewmodel.addItem(title: textFieldText)
            presentaionMode.wrappedValue.dismiss()
        }
    }
    
    func textIsValid() -> Bool{
        if textFieldText.count < 3{
            alertTitle = "Your todo should contain at least 3 characters 😟"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert()-> Alert{
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}
