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
    }
    
    fileprivate func handleAddAnnotations(_ decoder: JSONDecoder) {
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
    
    fileprivate func handlePolygon(_ decoder: JSONDecoder) {
        if let jsonData = PolygonString.data(using: .utf8){
            do {
                let polygon = try decoder.decode(Polygon.self, from: jsonData)
                let coordinations = polygon.coordinates.map{ point -> CLLocationCoordinate2D in
                    return CLLocationCoordinate2D(latitude: point[1], longitude: point[0])
                }
                let mkpolygon = MKPolygon(coordinates: coordinations, count: coordinations.count)
                mapView.addOverlay(mkpolygon)
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
        if overlay is MKPolygon {
            let polygonView = MKPolygonRenderer(overlay: overlay)
            polygonView.fillColor = .red
            
            return polygonView
        }
        //for testing
        return MKPolygonRenderer(overlay: overlay)
    }
}
