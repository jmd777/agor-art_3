//
//  ViewController.swift
//  agor art Ayite
//
//  Created by ayite  on 13/12/2019.
//  Copyright © 2019 ayite . All rights reserved.
//

import UIKit
import MapKit


class Event{
    let maneEvent: String
    let localateEvent: String
    let cityEvent: String
    let dateEvent: String
    let pictureEvent: UIImage
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    let picturePresentationEvent:UIImage
    let description: String
    let numberOfParticipant: Int
    let latitude: Float
    let longitude: Float
    
    init(maneEvent: String,localateEvent: String,cityEvent: String,dateEvent: String,pictureEvent: UIImage,picturePresentationEvent: UIImage, discipline: String, coordinate: CLLocationCoordinate2D, description: String, numberOfParticipant: Int , latitude: Float,longitude: Float ) {
        self.maneEvent = maneEvent
        self.localateEvent = localateEvent
        self.cityEvent = cityEvent
        self.dateEvent = dateEvent
        self.pictureEvent = pictureEvent
        self.discipline = discipline
        self.coordinate = coordinate
        self.picturePresentationEvent = picturePresentationEvent
        self.description = description
        self.numberOfParticipant = numberOfParticipant
        self.latitude = latitude
        self.longitude = longitude
    }
}
/*

 */
var eventNtm = Event(maneEvent: "NTM",localateEvent: "l'Olympia",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "ntmListe")!,picturePresentationEvent: UIImage(named: "ntmDescription")!, discipline: "concert", coordinate: CLLocationCoordinate2D(latitude: 48.8578, longitude: 2.35693), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8578,longitude: 2.35693 )
var eventSylla = Event(maneEvent: "Ahmed Sylla",localateEvent: "salle Pleyel",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "syllaListe")!,picturePresentationEvent: UIImage(named: "syllaDescription")!, discipline: "Théatre", coordinate: CLLocationCoordinate2D(latitude: 48.877, longitude: 2.301), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7,  latitude: 48.877,longitude: 2.301)
var eventWeeLoveGreen = Event(maneEvent: "Wee Love Green",localateEvent: "l'Olympia",cityEvent: "Paris",dateEvent: "18/12/2019",pictureEvent: UIImage(named: "weeLoveGreenListe")!,picturePresentationEvent: UIImage(named: "weeLoveGreenDescription")!, discipline: "concert", coordinate: CLLocationCoordinate2D(latitude: 48.8538, longitude: 2.3362), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8538,longitude: 2.3362)
var eventLomepal = Event(maneEvent: "Lomepal",localateEvent: "Palais des Congrès",cityEvent: "Paris",dateEvent: "03/01/2020",pictureEvent: UIImage(named: "lomepalListe")!,picturePresentationEvent: UIImage(named: "lomepalDescription")!, discipline: "Théatre", coordinate: CLLocationCoordinate2D(latitude: 48.8702443, longitude: 2.3283595), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8702443,longitude: 2.3283595)
var eventFary = Event(maneEvent: "Fary",localateEvent: "l'Olympia",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "faryListe")!,picturePresentationEvent: UIImage(named: "faryDescription")!, discipline: "Théatre", coordinate: CLLocationCoordinate2D(latitude: 48.8702443, longitude: 2.3283595), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8702443,longitude: 2.3283595)
var eventDanse = Event(maneEvent: "Free Style",localateEvent: "la Villette",cityEvent: "Paris",dateEvent: "21/01/2019",pictureEvent: UIImage(named: "danseListe")!,picturePresentationEvent: UIImage(named: "danseDescription")!, discipline: "Danse", coordinate: CLLocationCoordinate2D(latitude: 48.8938, longitude: 2.3902), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 10, latitude: 48.8938,longitude: 2.3902)
var eventElephant = Event(maneEvent: "Elephant Man",localateEvent: "Les Folies Bergères",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "elephantListe")!,picturePresentationEvent: UIImage(named: "elephantDescription")!, discipline: "Théatre", coordinate: CLLocationCoordinate2D(latitude: 48.8741222, longitude: 2.3448869), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8741222,longitude: 2.3448869)
var eventStarmania = Event(maneEvent: "Starmania",localateEvent: "Casino de Paris",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "starmaniaListe")!,picturePresentationEvent: UIImage(named: "starmaniaDescription")!, discipline: "Théatre", coordinate: CLLocationCoordinate2D(latitude: 48.8784, longitude: 2.33006), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8784,longitude: 2.33006)
var eventPnl = Event(maneEvent: "PNL",localateEvent: "Accorhotels Arena",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "pnlListe")!,picturePresentationEvent: UIImage(named: "pnlDescription")!, discipline: "concert", coordinate: CLLocationCoordinate2D(latitude: 48.8391, longitude: 2.37797), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8391,longitude: 2.37797)
var eventStreetArt  = Event(maneEvent: "Street Art ",localateEvent: "Les ateliers 33",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "streetArtListe")!,picturePresentationEvent: UIImage(named: "streetArtDescription")!, discipline: "Art", coordinate: CLLocationCoordinate2D(latitude: 48.8288, longitude: 2.32976), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8288,longitude: 2.32976)
var eventManga = Event(maneEvent: "Manga",localateEvent: "Ateliers du quartier",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "mangeListe")!,picturePresentationEvent: UIImage(named: "mangeDescription")!, discipline: "art", coordinate: CLLocationCoordinate2D(latitude: 48.8411, longitude: 2.30092), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8411,longitude: 2.30092)
var eventSwallow = Event(maneEvent: "Swallow",localateEvent: "salle Pleyel",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "swallowListe")!,picturePresentationEvent: UIImage(named: "swallowdescription")!, discipline: "Cinéma", coordinate: CLLocationCoordinate2D(latitude: 48.8622, longitude: 2.34211), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8622,longitude: 2.34211)
var eventGrease = Event(maneEvent: "Grease",localateEvent: "Grand Rex",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "greaseListe")!,picturePresentationEvent: UIImage(named: "greaseDescription")!, discipline: "Théatre", coordinate: CLLocationCoordinate2D(latitude: 48.8707, longitude: 2.34741), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8707,longitude: 2.34741)
var eventPlaymobil = Event(maneEvent: "Playmobil",localateEvent: "Hôtel des Invalides",cityEvent: "Paris",dateEvent: "21/12/2019",pictureEvent: UIImage(named: "playMobileListe")!,picturePresentationEvent: UIImage(named: "playMobileDescription")!, discipline: "Expo", coordinate: CLLocationCoordinate2D(latitude: 48.8582, longitude: 2.31289), description: "Nunc velit augue, scelerisque dignissim, lobortis et, aliquam in, risus. In eu eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Curabitur vulputate elit viverra augue. Mauris fringilla, tortor sit amet malesuada mollis, sapien mi dapibus odio, ac imperdiet ligula enim eget nisl. Quisque vitae pede a pede aliquet suscipit. Phasellus tellus pede, viverra vestibulum, gravida id, laoreet in, justo.",numberOfParticipant: 7, latitude: 48.8582,longitude: 2.31289)

var eventTab: [Event] = [eventNtm, eventSylla,eventWeeLoveGreen,eventLomepal, eventFary, eventDanse, eventElephant, eventStarmania, eventPnl, eventStreetArt, eventManga, eventSwallow, eventGrease, eventPlaymobil]


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewEvent: UITableView!
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewEvent.dataSource = self
        tableViewEvent.rowHeight = UITableView.automaticDimension
        tableViewEvent.estimatedRowHeight = 500
        tableViewEvent.delegate = self
        // set initial location in Honolulu
        let initialLocation = CLLocation(latitude: 48.8534, longitude: 2.3488)
        
        centerMapOnLocation(location: initialLocation)
      
        for event in eventTab {
            let localateEvent = EventLocalate(title: event.maneEvent,locationName: event.localateEvent,discipline: event.discipline, coordinate: event.coordinate)
            mapView.addAnnotation(localateEvent)
        }
      
    }
    
    let regionRadius: CLLocationDistance = 6000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventTab.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as? EventTableViewCell else {
            return UITableViewCell()
        }
        
        let event = eventTab[indexPath.row]
        cell.titleEvent?.text = event.maneEvent
        cell.localateEvent?.text = event.localateEvent
        cell.cityEvent?.text = event.cityEvent
        cell.dateEvent?.text = event.dateEvent
        cell.picture?.image = event.pictureEvent
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
//        performSegue(withIdentifier: "EventCell", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let newViewController = segue.destination as? EventViewController, let indexPath = tableViewEvent.indexPathForSelectedRow{
            let event = eventTab[indexPath.row]
            newViewController.eventObjet = event
        }
        
    }
}







