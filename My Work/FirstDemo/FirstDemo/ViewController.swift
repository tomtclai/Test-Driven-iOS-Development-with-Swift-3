//
//  ViewController.swift
//  FirstDemo
//
//  Created by Lai, Tom on 5/6/17.
//  Copyright © 2017 Lai, Tom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfVowels(in string: String) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u",
                                   "A", "E", "I", "O", "U"]
        var numberOfVowels = 0
        for character in string.characters {
            if vowels.contains(character) {
                numberOfVowels += 1
            }
        }
        return numberOfVowels
    }
    
    func makeHeadline(from string: String) -> String{
        let words = string.components(separatedBy: " ")
        let headlineWords = words.map { (word) -> String in
            var mutableWord = word
            let firstChar = mutableWord.remove(at: mutableWord.startIndex)
            return String(firstChar).uppercased() + mutableWord
        }
        return headlineWords.joined(separator:" ")
    }
}

