//
//  RecommendViewController.swift
//  Kpop Recommendations!
//
//  Created by Girls Who Code on 7/9/19.
//  Copyright © 2019 Girls Who Code. All rights reserved.
//

import UIKit

class RecommendViewController: UIViewController {
    
    var girlGroups: [String] = ["MAMAMOO","EXID","LOONA","(G)-IDLE","CLC", "BLACKPINK","WJSN", "IZ*ONE","Red Velvet","Everglow"]
    var guyGroups: [String] = ["BTS","NCT-127","ATEEZ","TOMORROW X TOGETHER","B.A.P.","MONSTA X", "EXO","GOT7","AB6IX","Stray Kids","SF9"]
    var groups: [String] = []
    
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var showImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pickGirlGroup(_ sender: Any) {
        getRandomGirlGroup()
    }
    
    @IBAction func pickGuyGroup(_ sender: Any) {
        getRandomGuyGroup()
    }
    @IBAction func pickAnyGroup(_ sender: Any) {
        getRandomGroup()
    }
    
    func getRandomGirlGroup() {
        var randomGroup = girlGroups.randomElement()
        groupName.text = randomGroup
        showImageView.image = UIImage(named: randomGroup!)
    }
    
    func getRandomGuyGroup() {
        var randomGroup = guyGroups.randomElement()
        groupName.text = randomGroup
        showImageView.image = UIImage(named: randomGroup!)
    }
    
    func getRandomGroup() {
        groups = girlGroups + guyGroups
        var randomGroup = groups.randomElement()
        groupName.text = randomGroup
        showImageView.image = UIImage(named: randomGroup!)
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getRandomGroup()
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
