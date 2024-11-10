import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "first title",
        "second title",
        "third title"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .navigationTitle("Todo List 🦄")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddTaskView())
            )
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}

