import SwiftUI
import MapKit

struct MapLocationView: UIViewRepresentable {

    @Binding var selectedCoordinate: CLLocationCoordinate2D?

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        return mapView
    }

    func updateUIView(_ view: MKMapView, context: Context) {

    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapLocationView

        init(_ parent: MapLocationView) {
            self.parent = parent
        }

        func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
            parent.selectedCoordinate = nil
        }

        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            if let annotation = view.annotation {
                parent.selectedCoordinate = annotation.coordinate
            }
        }

        func mapView(_ mapView: MKMapView, regionWillChangeAnimated animated: Bool) {
            mapView.layer.removeAllAnimations()
        }
    }
}

struct CoontentView: View {

    @State private var selectedCoordinate: CLLocationCoordinate2D?

    var body: some View {
        VStack {
            MapLocationView(selectedCoordinate: $selectedCoordinate)
                .frame(height: 300)
                .padding()
            if let coordinate = selectedCoordinate {
                Text("Selected Coordinate: \(coordinate.latitude), \(coordinate.longitude)")
            } else {
                Text("Tap on the map to select a location")
            }
        }
    }
}

struct CoontentView_Previews: PreviewProvider {
    static var previews: some View {
        CoontentView()
    }
}
