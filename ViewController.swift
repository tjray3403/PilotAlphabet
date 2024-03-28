//
//  ViewController.swift
//  tray_PilotAlphabet
//
//  Created by Tristan Earl Ray, Jr on 2/27/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var inputOutlet: UITextField!
    
    @IBOutlet weak var alphabetOutlet: UILabel!
    
    
    //var pilotWordDictionary: [String:String] = [:] // an empty dictionary
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputOutlet.delegate = self
        
        //populate pilotWordDictionary
        createPilotAlphabetDictionary()
    }

    //change function to a switch case based function
    func createPilotAlphabetDictionary() {//populate pilotWordDictionary
    /*pilotWordDictionary["A"] = "Alpha"
        pilotWordDictionary["B"] = "Bravo"
        pilotWordDictionary["C"] = "Charlie"
        pilotWordDictionary["D"] = "Delta"
        //.....
        //.....
        pilotWordDictionary["Z"] = "Zulu"
        */
    }
    
    func switchCase(argument: String) -> String {
        switch argument {//pilotWordDictionary[argument] {
        case "A":
            return "Alpha"
        case "B":
            return "Brazo"
        case "C":
            return "Charlie"
        case "D":
            return "Delta"
        case "E":
            return "Echo"
        case "F":
            return "Foxtrot"
        case "G":
            return "Golf"
        case "H":
            return "Hotel"
        case "I":
            return "India"
        case "J":
            return "Juliet"
        case "K":
            return "Kilo"
        case "L":
            return "Lima"
        case "M":
            return "Mike"
        case "N":
            return "November"
        case "O":
            return "Oscar"
        case "P":
            return "Papa"
        case "Q":
            return "Quebec"
        case "R":
            return "Romeo"
        case "S":
            return "Sierra"
        case "T":
            return "Tango"
        case "U":
            return "Uniform"
        case "V":
            return "Victor"
        case "W":
            return "Whiskey"
        case "X":
            return "X-Ray"
        case "Y":
            return "Yankee"
        case "Z":
            return "Zulu"
        default:
            return "Invalid Case"
            
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputOutlet.resignFirstResponder() //make the software keyboard disappear
        if let input = inputOutlet.text {// try to read from textfield
            if input.count == 0 || input.count > 1 || input.uppercased() < "A" || input.uppercased() > "Z" {
                
            } else {
                //alphabetOutlet.text = pilotWordDictionary[input.uppercased()]
                alphabetOutlet.text = switchCase(argument:input.uppercased())
            }
        } else {//failed
            //display error message
            //copy the displayWarningMSG()
            displayAlert(msgTitle: "Error Msg", msgContent: "Invalid Input")
        }
        
        return (true)
        
    }
    
    
    //displayAlert(msgTitle: "Ready", msgContent: "Go")
    func displayAlert(msgTitle:String, msgContent:String){
        let alertController = UIAlertController(title: msgTitle, message: msgContent,
                                                preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "Close", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
    

    
}

