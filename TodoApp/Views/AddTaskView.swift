import SwiftUI

struct AddTaskView: View {
    @State var textField: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type task title...", text: $textField)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.systemGray5))
                    .cornerRadius(10)
                
                TextField("Type task description...", text: $textField)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.systemGray5))
                    .cornerRadius(10)
                    
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(
                            Color(UIColor(
                                red: 236/255,
                                green: 106/255,
                                blue: 195/255,
                                alpha: 1.0
                            ))
                        )
                        .cornerRadius(10)
                })
            }
            .padding(14)
            
        }
        .navigationTitle("Add Task 🏳️‍🌈")
    }
}

#Preview {
    NavigationView {
        AddTaskView()
    }
}
