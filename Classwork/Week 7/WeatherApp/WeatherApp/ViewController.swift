//
//  ViewController.swift
//  WeatherApp
//
//  Created by Fair, Josh on 12/7/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    @IBOutlet weak var currentWeatherLabel: UILabel!
    @IBOutlet weak var weatherState: UITextField!
    @IBOutlet weak var weatherCity: UITextField!
    var temperate: Float?
    var condition: String?
    let apiKey = "d3c1e07bb8f5c2d60e0690bbbeb21c8d"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func GetCurrentWeather(sender: AnyObject) {
        let requestUrl = "http://api.openweather.org/data/2.5/weather?q=\(weatherCity.text!),\(weatherState.text!)&appid=\(apiKey)"
        
        Alamofire.request(request(.GET, requestUrl).responseJSON { (response) -> Void in }
}