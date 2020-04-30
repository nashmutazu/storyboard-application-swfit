//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    var curStory: Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Start")
        updateUI()
        
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        if (sender.currentTitle! == curStory!.choice1) {
            story.checkAnswer(curStory!.choice1Destination)
        } else if (sender.currentTitle! == curStory!.choice2) {
            story.checkAnswer(curStory!.choice2Destination)
        } else {
            story.checkAnswer(0)
        }
        
//        story.nextStory()
        updateUI()
    }
    
    
    func updateUI() {
        curStory = story.getStory()
        storyLabel.text = curStory?.title
        choice1Button.setTitle(curStory?.choice1, for: .normal)
        choice2Button.setTitle(curStory?.choice2, for: .normal)
    }


}

