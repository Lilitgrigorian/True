//
//  ViewController.swift
//  TRUE
//
//  Created by GRIGORIAN LILIT on 18/12/2017.
//  Copyright © 2017 GRIGORIAN LILIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // introducing label
    @IBOutlet weak var firstPage: UILabel!
    let questionSuggestions = ["eat raw fish ",
                               "buy a new house ",
                               "drink tea with salt ",
                               "go to travel around the world ",
                               "become an Ios Developer ",
                               "go back to uni ",
                               "have many kids ",
                               "swim in cold water in winter ",
                               "eat chicken with honey ",
                               "drink ocean water"]
    let time = ["one day",
                "next week",
                "next year",
                "few days later",
                "right now",
                "in the futur",
                "tomorrow",
                "next month",
                "in two months"]
    let happenedThings = ["eaten a raw fish ",
                          "turned around the world ",
                          "studied law ", " been to Paris ",
                          "drink salty soda ",
                          "somked ",
                          "learnt a new language ",
                          "hit a teacher ",
                          "made cry a baby ",
                          "stolen something "]
    
    let whileThings = ["2 days ago",
                       "last month",
                       "last week",
                       "few years ago",
                       "few days ago",
                       "in the past",
                       "during last weeks"]
    let whoNext = ["1",
                   "2",
                   "3",
                   "4",
                   "5",
                   "6",
                   "7",
                   "8",
                   "9",
                   "10"]
    
    
    // introducing first action for futur button
    @IBAction func futurButton(_ sender: Any) {
    // generate random question suggestion
        let questionSuggestionsRandomIndex = Int(arc4random_uniform(UInt32(questionSuggestions.count)))
        let randomQuestionSuggestions = questionSuggestions[questionSuggestionsRandomIndex]
        //generate random mixt words
        let randomTimeIndex = Int(arc4random_uniform(UInt32(time.count)))
        let randomTime = time[randomTimeIndex]
        // modify the label
        let newFirstPage = "Will you " + randomQuestionSuggestions + " " + randomTime + "?"
        firstPage.text = newFirstPage
        }
    
    // introducing past button
    @IBAction func pastButton(_ sender: Any) {
        // generate random heppened things
        let happenedThingsRandomIndex = Int(arc4random_uniform(UInt32(happenedThings.count)))
        let randomHappenedThings = happenedThings[happenedThingsRandomIndex]
        // generate random whileThings
        let randomWhileThingsIndex = Int(arc4random_uniform(UInt32(whileThings.count)))
        let randomWhileThings = whileThings[randomWhileThingsIndex]
        // modifiy the label
        let newFirstPage = "Have you ever  " + randomHappenedThings + " " + randomWhileThings + "?"
        firstPage.text = newFirstPage
        }
    
    // generate next button
    @IBAction func nextPlayer(_ sender: Any) {
        // generate random nextPlayer
        let whoNextRandomIndex = Int(arc4random_uniform(UInt32(whoNext.count)))
        let randomWhoNext = whoNext[whoNextRandomIndex]
        // modify the label
        let newFristPage = "Your turn number " + randomWhoNext + "!"
        firstPage.text = newFristPage
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}


