//
//  TotalMapViewController.swift
//  Custom TableView Cell
//
//  Created by D7703_24 on 2018. 6. 11..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit
import MapKit

class TotalMapViewController: UIViewController {
    @IBOutlet weak var totalMapView: MKMapView!
    //주소배열 받기
    
    var locations = [String]()
    var names = [String]()
    var count = 0
    
    //pin 저장 배열
    var annotations = MKPointAnnotation()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(locations)
        
        //geocoding
        viewMap(locations: locations, names: names)
        
        
    }
    func viewMap(locations:[String], names:[String]) {
        for addr in locations {
            let geoCoder = CLGeocoder()
            geoCoder.geocodeAddressString(addr) {
                (placemarks:[CLPlacemark]?, error:Error?) ->Void in
                if let myError = error {
                    print(myError)
                    return
                }
                
                if let myPlacemarks = placemarks {
                    let myPlacemarks = myPlacemarks[0]
                    let loc = myPlacemarks.location?.coordinate
                    
                    let anno = MKPointAnnotation()
                    anno.coordinate = loc!
                    anno.title = names[self.count]
                    self.count = self.count + 1
                    anno.subtitle = addr
                    
                    
                    self.totalMapView.addAnnotation(anno)
                } else {
                    print("placemarks nil 발생")
                }
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

        }
