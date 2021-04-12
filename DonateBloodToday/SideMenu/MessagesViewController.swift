//
//  MessagesViewController.swift
//  DonateBloodToday
//
//  Created by xminds on 12/04/21.
//

import UIKit

class MessagesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK:- IBOutlet Connections
    
    @IBOutlet var messageSelectionSegment: UISegmentedControl!
    @IBOutlet var tblView_messages: UITableView!
    
    //MARK:- Variable Declarations
    
    var messgaes = [String]()
    
    //MARK:- Initial Functions

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //MARK:- UIChanges
    
    func uIChanges() {
        
    }
    
    //MARK:- Navigation Bar Changes
    
    func navigationBarChanges() {
        navigationController?.navigationBar.isHidden = false
        self.setTitle("Messages", andImage: UIImage(named: "logoRight")!)
        let btnMenu: UIButton = UIButton()
        btnMenu.setImage(UIImage(named: "menu"), for: UIControl.State())
        btnMenu.addTarget(self, action: #selector(menuButtonTapped), for: .touchUpInside)
        btnMenu.frame = CGRect(x: 0, y: 0, width: 33/2, height: 27/2)
        let barButton = UIBarButtonItem(customView: btnMenu)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    //MARK:- Tableview Delegates and Datasorces
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messgaes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellitem = tblView_messages.dequeueReusableCell(withIdentifier: "messagesCell") as! MessagesTableViewCell
        cellitem.btnOutlet_call.addTarget(self, action: #selector(callContact(sender:)), for: .touchUpInside)
        cellitem.btnOutlet_share.addTarget(self, action: #selector(shareContact(sender:)), for: .touchUpInside)
        return cellitem
    }
    
    //MARK:- Button Actions
    
    @objc func callContact(sender: UIButton) {
        
    }
    
    @objc func shareContact(sender: UIButton) {
        
    }
    
    @objc func menuButtonTapped() {
        
    }

}
