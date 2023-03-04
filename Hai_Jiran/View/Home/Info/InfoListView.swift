//
//  InfoListView.swift
//  Hai_Jiran
//
//  Created by stdc user on 28/02/2023.
//

import SwiftUI



struct NewInfoListView: View {
    @State private var isSwiped = false
    @State var newinfo: [Info] = infos
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(newinfo) { info in
                    Button(action: {
                                withAnimation {
                                }
                            }) {
                                ChatRow(name: info.name, details: info.details)
                            }
                        
                        .swipeActions(edge: .trailing,allowsFullSwipe: true, content: {
                            Button(role: .destructive, action: {
                                newinfo = infos
                            }, label: {
                                Label("Delete", systemImage: "trash")
                            })
                            Button(role: .none, action: {
                                newinfo = infos
                            }, label: {
                                Label("Delete", systemImage: "trash")
                            })
                        })
                }
            }
            .listStyle(PlainListStyle())
            .onAppear {
                // Get the latest data from the array and update the state variable
                newinfo = infos
            }
        }
            
        
    }
    func delete(at offsets: IndexSet) {
        infos.remove(atOffsets: offsets)
        }
}

struct MyInfoListView_Previews: PreviewProvider {
    static var previews: some View {
        MyInfoListView()
    }
}

struct MyInfoListView: View {
    @State private var isSwiped = false

    
    var body: some View {
        NavigationStack {
            List {
                ForEach(infos) { info in
                    Button(action: {
                        withAnimation {
                                        self.isSwiped.toggle()
                                    }
                            }) {
                                ChatRow(name: info.name, details: info.details)
                            }
                        
                        .swipeActions(edge: .trailing,allowsFullSwipe: false, content: {
                            Button(role: .none, action: {
                                
                            }, label: {
                                Label("Done", systemImage: "square.and.pencil")
                            }).tint(.green)
                            Button(role: .none, action: {
                                
                            }, label: {
                                Label("Edit", systemImage: "square.and.pencil")
                            }).tint(.gray)
                            Button(role: .none, action: {
                                
                            }, label: {
                                Label("Share", systemImage: "square.and.arrow.up")
                            }).tint(.yellow)
                            
                        })
                }
            }
            .listStyle(PlainListStyle())
        }
            
        
    }
    func delete(at offsets: IndexSet) {
        infos.remove(atOffsets: offsets)
        }
}

struct CompletedInfoListView: View {
    @State private var isSwiped = false

    
    var body: some View {
        NavigationStack {
            List {
                ForEach(infos) { info in
                    Button(action: {
                                withAnimation {
                                }
                            }) {
                                CompletedChatRow(name: info.name, details: info.details)
                            }
                        
                        .swipeActions(edge: .trailing,allowsFullSwipe: true, content: {
                            Button(role: .destructive, action: {
                                
                            }, label: {
                                Label("Delete", systemImage: "trash")
                            })
                            Button(role: .none, action: {
                                
                            }, label: {
                                Label("Delete", systemImage: "trash")
                            })
                        })
                }
            }
            .listStyle(PlainListStyle())
        }
            
        
    }
    func delete(at offsets: IndexSet) {
        infos.remove(atOffsets: offsets)
        }
}
