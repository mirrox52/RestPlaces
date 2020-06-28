//
//  DetailsFoodView.swift
//  RestaurantApp
//
//  Created by Aliaksandr Batyesheu on 6/20/20.
//  Copyright © 2020 Aliaksandr Batyesheu. All rights reserved.
//

import UIKit
import MapKit

@IBDesignable class DetailsFoodView: BaseView {
    @IBOutlet weak var collectionView: UICollectionView?
    @IBOutlet weak var pageControl: UIPageControl?
    @IBOutlet weak var priceLabel: UILabel?
    @IBOutlet weak var hoursLabel: UILabel?
    @IBOutlet weak var locationLabel: UILabel?
    @IBOutlet weak var ratingsLabel: UILabel?
    @IBOutlet weak var mapView: MKMapView?

    @IBAction func handleControl(_ sender: UIPageControl) {

    }
}
