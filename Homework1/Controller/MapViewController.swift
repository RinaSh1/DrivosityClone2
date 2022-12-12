//
//  MapViewController.swift
//  Homework1
//
//  Created by Rina Shabani on 30.11.22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    let annotations = [MKAnnotation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set initial location in Tetovo
        mapView.delegate = self
        let initialLocation = CLLocation(latitude: 42.0069, longitude: 20.9715)
        mapView.centerToLocation(initialLocation)
        
        let decoder = JSONDecoder()
        handleAddAnnotations(decoder)
        handlePolygon(decoder)
        
        let tripView = TripDetailsView(frame: CGRect(x: 0.0, y: 720.0, width:420.0, height: 100.0))
        self.view.addSubview(tripView)
        tripView.layer.cornerRadius = 12
        tripView.clipsToBounds = false
        tripView.layer.shadowOffset = CGSize(width: 0, height: 0)
        tripView.layer.shadowOpacity = 0.7
        tripView.layer.shadowRadius = 2.0
    }
    
    func handleAddAnnotations(_ decoder: JSONDecoder) {
        if let jsonData = tripDetails.data(using: .utf8){
            do {
                let trip = try decoder.decode(Trip.self, from: jsonData)
                print(trip)
                let annotations = trip.coordinates.map{ point -> DrivosityAnnotations in
                    let annotations =
                    DrivosityAnnotations(coordinate: CLLocationCoordinate2D(latitude: point[1], longitude: point[0]))
                    return annotations
                }
                mapView.addAnnotations(annotations)
                
            }
            catch {
                print(String(describing: error))
            }
            
        }
    }
    
    func handlePolygon(_ decoder: JSONDecoder) {
        if let jsonData = PolygonString.data(using: .utf8){
            do {
                let polygon = try decoder.decode(Polygon.self, from: jsonData)
                let coordinations = polygon.coordinates.map{ point -> CLLocationCoordinate2D in
                    return CLLocationCoordinate2D(latitude: point[1], longitude: point[0])
                }
                let mkpolyline = MKPolyline(coordinates: coordinations, count: coordinations.count)
                mapView.addOverlay(mkpolyline)
            }
            
            catch {
                print(String(describing: error))
            }
        }
    }
}

private extension MKMapView {
    func centerToLocation(
        _ location: CLLocation, //location argiment is the center point
        regionRadius: CLLocationDistance = 500  // The region will have north-south and east-west spans based on a distance of regionRadius
    ) {
        let coordinateRegion = MKCoordinateRegion(
            center: location.coordinate,
            latitudinalMeters: regionRadius,
            longitudinalMeters: regionRadius)
        setRegion(coordinateRegion, animated: true) //display the region represented my MKCoordinateRegion
    }
}

extension MapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKPolyline {
            let polylineRenderer = MKPolylineRenderer(overlay: overlay)
            polylineRenderer.strokeColor = UIColor.black
            polylineRenderer.lineWidth = 5
            
            return polylineRenderer
        }
        //for testing
        return MKPolygonRenderer(overlay: overlay)
    }
}
