import SwiftUI

struct Infoo: Codable, Identifiable {
    var id = UUID()
    var name: String
    var details: String
}

class Infoss: ObservableObject {
    @Published var items = [Infoo]()
    
    func save() {
        do {
            let data = try JSONEncoder().encode(items)
            UserDefaults.standard.set(data, forKey: "infos")
        } catch {
            print("Error encoding infos: \(error)")
        }
    }
    
    func load() {
        if let data = UserDefaults.standard.data(forKey: "infos") {
            do {
                items = try JSONDecoder().decode([Infoo].self, from: data)
            } catch {
                print("Error decoding infos: \(error)")
            }
        }
    }
}

struct ConteentView: View {
    @StateObject var infos = Infoss()
    @State var name = ""
    @State var details = ""
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Details", text: $details)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Add") {
               //$infos.append(Info(name: name, details: details))
                name = ""
                details = ""
                infos.save()
            }
            List {
                ForEach(infos.items) { info in
                    HStack {
                        Text(info.name)
                        Spacer()
                        Text(info.details)
                    }
                }
            }
        }
        .onAppear {
            infos.load()
        }
    }
}
