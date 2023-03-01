import SwiftUI

struct ScreenA: View {
    @State var isActive : Bool = false

    var body: some View {
        NavigationView {
            NavigationLink(
                destination: ScreenB(rootIsActive: self.$isActive),
                isActive: self.$isActive
            ) {
                Text("ScreenA")
            }
            .isDetailLink(false)
            .navigationBarTitle("Screen A")
        }
    }
}

struct ScreenB: View {
    @Binding var rootIsActive : Bool

    var body: some View {
        NavigationLink(destination: ScreenD(shouldPopToRootView: self.$rootIsActive)) {
            Text("Next screen")
        }
        .isDetailLink(false)
        .navigationBarTitle("Screen B")
    }
}

struct ScreenD: View {
    @Binding var shouldPopToRootView : Bool

    var body: some View {
        VStack {
            Text("Last Screen")
            Button (action: { self.shouldPopToRootView = false } ){
                Text("Pop to root")
            }
        }.navigationBarTitle("Screen D")
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenA()
    }
}
