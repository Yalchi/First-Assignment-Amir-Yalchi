//
//  ViewController.swift
//  First Assignment Amir Yalchi
//
//  Created by Amir Yalchi on 2/9/17.
//  Copyright © 2017 Yalchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var ContactLabel: UILabel!
    @IBOutlet weak var FNameLabel: UILabel!
    @IBOutlet weak var LNameLabel: UILabel!
    @IBOutlet weak var ComLabel: UILabel!
    @IBOutlet weak var PhoneLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var Fn: UITextField!
    @IBOutlet weak var Ln: UITextField!
    @IBOutlet weak var Com: UITextField!
    @IBOutlet weak var PhN: UITextField!
    @IBOutlet weak var Email: UITextField!
    
    @IBAction func Fn(_ sender: UITextField)
    {
    }
    
    @IBAction func Ln(_ sender: UITextField)
    {
    }
    
    @IBAction func Com(_ sender: UITextField)
    {
    }
    
    @IBAction func PhN(_ sender: UITextField)
    {
    }
    
    @IBAction func Email(_ sender: UITextField)
    {
    }
    
    @IBAction func SaveB(_ sender: UIButton)
    {
        
        if  ((self.Fn.text!.isEmpty) || (self.Ln.text!.isEmpty) || (self.Com.text!.isEmpty) || (self.PhN.text!.isEmpty) || (self.Email.text!.isEmpty))
        
        {
            
            let myAlert = UIAlertController(title: "ERROR", message: "Please Fill All Required Fields!", preferredStyle:UIAlertControllerStyle.alert);
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default)
            
            myAlert.addAction(okAction);
            
            self.present(myAlert, animated: true, completion: nil);
            
        }
        else
        {
            
            let myAlert = UIAlertController(title: "Contact Saved", message: "\(Fn.text!) is Now a Contact", preferredStyle:UIAlertControllerStyle.alert);
            
            
            let okAction = UIAlertAction(title: "COOL!", style: UIAlertActionStyle.default)
            {
                (ACTION) in
                self.Fn.text = nil
                self.Ln.text = nil
                self.Com.text = nil
                self.PhN.text = nil
                self.Email.text = nil;
            }
            
            myAlert.addAction(okAction);
            
            self.present(myAlert, animated: true, completion: nil);
            
        }
    }
    
    @IBAction func CancelB(_ sender: UIButton)
    {
        let myAlert = UIAlertController(title: nil, message:"Are you sure?", preferredStyle:UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title: "Yes I'm Sure", style: UIAlertActionStyle.default)
        {
            (ACTION) in
            
            self.Fn.text = nil
            self.Ln.text = nil
            self.Com.text = nil
            self.PhN.text = nil
            self.Email.text = nil
        }
        let cancelAction = UIAlertAction(title: "No Way!", style: UIAlertActionStyle.cancel)
        
        
        
        
        myAlert.addAction(okAction);
        myAlert.addAction(cancelAction);

        
        self.present(myAlert, animated: true, completion: nil);
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Fn.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped))
        self.view.addGestureRecognizer(tapGesture)

    }
    
    
    @IBAction private func textFieldDoneEditing(_ sender: UITextField)
    {
        
        sender.resignFirstResponder()
    }
    
    func viewTapped()
    {
        Fn.resignFirstResponder()
        Ln.resignFirstResponder()
        Com.resignFirstResponder()
        PhN.resignFirstResponder()
        Email.resignFirstResponder()
        
        
    }
   
}

