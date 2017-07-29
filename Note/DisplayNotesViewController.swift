//
//  DisplayNotesViewController.swift
//  Note
//
//  Created by King Justin on 7/27/17.
//  Copyright © 2017 toBeDetermined. All rights reserved.
//

import UIKit

class DisplayNoteViewController: UIViewController {
    
    var note: Note?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    override func viewWillAppear(_ animated: Bool) {
        titleTextField.text = ""
        contentTextView.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "cancel" {
                print("cancel")
            }
            
            if identifier == "save" {
                print("save")
                
                let note = Note()
                
                note.title = titleTextField.text ?? ""
                note.content = contentTextView.text
                
                let listNotesTableViewController = segue.destination as! ListNotesTableViewController
                
                listNotesTableViewController.notes.append(note)
                
            }
        }
    }
}
