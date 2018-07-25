//
//  RecommendViewController.swift
//  iRecommendApp
//
//  Created by Spence on 7/25/18.
//  Copyright © 2018 Delaney Barrow. All rights reserved.
//

import UIKit

class RecommendViewController: UIViewController {
    @IBOutlet weak var recommendationLabel: UILabel!
    
    @IBOutlet weak var recommendationImage: UIImageView!
    var currentPosition: Int = 0
    var recommendations: [String] = ["FREEKS AND GEEKS", "THE OFFICE", "PARKS AND RECREATION", "WHITE COLLAR", "GOSSIP GIRL", "GREY'S ANATOMY", "NEW GIRL"]
    var arrayLength = 0
    
    func getRecommendation() {
        arrayLength = recommendations.count
        currentPosition = Int(arc4random_uniform(UInt32(arrayLength)))
        
        recommendationLabel.text = recommendations[currentPosition]
        recommendationImage.image = UIImage(named: recommendations[currentPosition])
    }

    @IBAction func newRecommendation(_ sender: Any) {
        getRecommendation()
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        getRecommendation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
