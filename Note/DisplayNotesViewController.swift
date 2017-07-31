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
        
        if let actualNote = note {
            titleTextField.text = actualNote.title
            contentTextView.text = actualNote.content
        } else {
            titleTextField.text = ""
            contentTextView.text = ""
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var listNotesTableViewController = segue.destination as! ListNotesTableViewController
        if segue.identifier == "save" {
            if let note = note {
                note.title = titleTextField.text ?? ""
                note.content = contentTextView.text ?? ""
                listNotesTableViewController.tableView.reloadData()
            } else {
                var newNote = Note()
                newNote.content = contentTextView.text
                newNote.title = titleTextField.text!
                newNote.modificationTime = NSDate()
                listNotesTableViewController.notes.append(newNote)
            }
            
        }
    }
}
