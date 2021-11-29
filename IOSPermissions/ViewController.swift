import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    
    
    var mapView : MKMapView?
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // https://developer.apple.com/documentation/corelocation/cllocationmanager/1620551-requestalwaysauthorization
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        locationManager.allowsBackgroundLocationUpdates = true
        locationManager.pausesLocationUpdatesAutomatically = false

        addMapView()

        mapView?.showsUserLocation = true
        

        
    }
    
    func addMapView()
    {
        mapView =  MKMapView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        self.view.addSubview(mapView!)
        
        NSLayoutConstraint.activate([
            mapView!.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            mapView!.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mapView!.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView!.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }


}

