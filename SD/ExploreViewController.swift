//
//  FirstViewController.swift
//  SD
//
//  Created by Mustang Design on 2015/9/16.
//  Copyright (c) 2015年 teamecodenect. All rights reserved.
//

import UIKit

class ExploreViewController:  UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    let data = Data()
    
    //var arrayOfEvent: [Event]=[Event]()
    
    
    //    override init(style: UITableViewStyle, className: String!)
//    {
//        super.init(style: style, className: className)
//        
//        self.pullToRefreshEnabled = true
//        self.paginationEnabled = false
//        self.objectsPerPage = 25
//        
//        self.parseClassName = className
//    }
//    
//    required init(coder aDecoder:NSCoder)
//    {
//        fatalError("NSCoding not supported")  
//    }
//    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.navigationBar.barTintColor = UIColor.redColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        //self.setUpEvents()
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
    }
//    override func queryForTable() -> PFQuery {
//        var query:PFQuery = PFQuery(className:self.parseClassName!)
//        
//        if(objects?.count == 0)
//        {
//            query.cachePolicy = PFCachePolicy.CacheThenNetwork
//        }
//        
//        query.orderByAscending("name")
//        
//        return query
//    }
//    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath, object: PFObject?) -> PFTableViewCell? {
//        
//        let cellIdentifier:String = "Cell"
//        
//        var cell:PFTableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? PFTableViewCell
//        
//        if(cell == nil) {
//            cell = PFTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier)
//        }
//        
//        if let pfObject = object {
//            cell?.textLabel?.text = pfObject["name"] as? String
//        }
//        
//        return cell;
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return data.events.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomCell
        let entry = data.events[indexPath.row]
//        let event = arrayOfEvent[indexPath.row]
//        
        cell.UserName.text = entry.userName
        cell.EventTitle.text = entry.eventTitle
        cell.EventImage.image = UIImage(named:entry.eventImageName)
        
        return cell
    }
    

}





