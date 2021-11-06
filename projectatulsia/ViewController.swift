//
//  ViewController.swift
//  projectatulsia
//
//  Created by SAIMAG on 05/11/21.
//

import UIKit
import Alamofire
import Kingfisher

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
 var restaarr = [NSDictionary]()

    @IBOutlet weak var tablv: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       let url = URL(string: "http://demo4385120.mockable.io/restaurants")
        AF.request("http://demo4385120.mockable.io/restaurants").responseJSON { [self] (data) in
            
            let dic = data.value as! NSDictionary
            let data = dic.value(forKey: "data") as! NSDictionary
            
            self.restaarr = data.value(forKey: "restaurants") as! [NSDictionary]
            tablv.reloadData()
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaarr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.imgv.kf.setImage(with: URL(string: restaarr[indexPath.row].value(forKey: "imageUrl") as! String))
        cell.Bakeryname.text = restaarr[indexPath.row].value(forKey: "title") as! String
        cell.shop.text = restaarr[indexPath.row].value(forKey: "shortDesc") as! String
        cell.info.text = restaarr[indexPath.row].value(forKey: "orderedInformation") as! String
        cell.offer.text =  "pro extra " + "\(restaarr[indexPath.row].value(forKey: "discount") as! Int)" + "% OFF"
        cell.price.text = "₹" + "\(restaarr[indexPath.row].value(forKey: "price") as! Int)" + " for one"
        cell.rating.text = "\(restaarr[indexPath.row].value(forKey: "ratings") as! NSNumber)" + "/5"
        cell.time.text = "\(restaarr[indexPath.row].value(forKey: "waitingTime") as! Int)" + " mins"
        cell.selectionStyle = .none
        return cell
    }
    
    
}

