//
//  EventViewController.swift
//  agor art Ayite
//
//  Created by ayite  on 14/12/2019.
//  Copyright © 2019 ayite . All rights reserved.
//

import UIKit
import MapKit

class EventViewController: UITableViewController {

  
    
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var prix: UILabel!
    @IBOutlet weak var participants: UILabel!
    @IBOutlet weak var titre: UILabel!
    @IBOutlet weak var miniDescription: UILabel!
    @IBOutlet weak var genre: UILabel!
    @IBOutlet weak var lieu: UILabel!
    @IBOutlet weak var adresse: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var mapViewDescription: MKMapView!
    
    var eventObjet: Event!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    picture.image = eventObjet.picturePresentationEvent
        prix.text = "17 euros"
        participants.text = String("Nombre de places : \(eventObjet.numberOfParticipant)")
        titre.text = eventObjet.maneEvent
        miniDescription.text = "Quisque ornare tellus ullamcorper nulla."
        genre.text = eventObjet.discipline
        lieu.text = eventObjet.localateEvent
        date.text = eventObjet.dateEvent
        
        let localateEvent = EventLocalate(title: eventObjet.maneEvent,locationName: eventObjet.localateEvent,discipline: eventObjet.discipline, coordinate: eventObjet.coordinate)
        mapViewDescription.addAnnotation(localateEvent)
        let initialLocation = CLLocation(latitude: CLLocationDegrees(eventObjet!.latitude), longitude: CLLocationDegrees(eventObjet!.longitude))
        centerMapOnLocation(location: initialLocation)
        // Do any additional setup after loading the view.
    }
    
    let regionRadius: CLLocationDistance = 200
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapViewDescription.setRegion(coordinateRegion, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
