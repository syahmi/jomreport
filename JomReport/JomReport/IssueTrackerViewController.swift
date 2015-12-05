//
//  IssueTrackerViewController.swift
//  JomReport
//
//  Created by MSi on 11/11/2015.
//  Copyright © 2015 JomReport. All rights reserved.
//

import UIKit

class IssueTrackerViewController: UIViewController {
    
    var issues = [Issue]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myDate: NSDate = NSDate()
        let myUser1: User = User(email: "nik1@jomreport.com", password: "12345")
        
        let issue1: Issue = Issue(title: "Broken traffic light at Jalan Tunku", address: "Taman Permaisuri, Cheras", latitude: 3.1062989, longitude: 101.7204418, thumbnailImage: nil, date: myDate, category: "Traffic Light", user: myUser1)
        
        let issue2: Issue = Issue(title: "Sensored Grafitti at KLCC bridge", address: "Suria KLCC, Jalan P Ramlee", latitude: 3.15775, longitude: 101.7085059, thumbnailImage: nil, date: myDate, category: "Grafitti", user: myUser1)
        
        let issue3: Issue = Issue(title: "A few toyota cars abundened beside the road", address: "Tesco @ Jalan Klang Lama", latitude: 3.094343, longitude: 101.6727299, thumbnailImage: nil, date: myDate, category: "Hazard", user: myUser1)
        
        self.issues.append(issue1)
        self.issues.append(issue2)
        self.issues.append(issue3)
        /*
        
        let issueData = NSKeyedArchiver.archivedDataWithRootObject(self.issues)
        NSUserDefaults.standardUserDefaults().setObject(issueData, forKey: "issues")
        
        if let issueData = NSUserDefaults.standardUserDefaults().objectForKey("issues") as? NSData {
            let issue = NSKeyedUnarchiver.unarchiveObjectWithData(issueData)
            
        }
        */
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("issueCell", forIndexPath: indexPath) as! IssueTableViewCell
        let issue = self.issues[indexPath.row]
        
        if let image = issue.thumbnailImage {
            cell.issueThumbnailImageView.image = image
        }
        
        cell.issueTitleLabel.text = issue.title
        cell.issueAddressLabel.text = issue.address
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.issues.count
    }
    
    
    @IBAction func openSubmitReport(sender: UIBarButtonItem) {
    }
    
}