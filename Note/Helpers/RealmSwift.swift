import RealmSwift

class realmHelper {
	
	static func addNote(note : Note) {
		let realm = try! Realm()
		try! realm.write() {
			realm.add(Note)
		}
	}

	static func deleteNote(note : Note) {
		let realm = try! Realm()
		try! realm.write() {
			realm.delete(Note)
		}
	}

	static func updateNote(noteToBeUpdated : Note, newNote : Note) {
		let realm = try! Realm()
		try! realm.write() {
			noteToBeUpdated.title = newNote.title
			noteToBeUpdated.content = newNote.content
			noteToBeUpdated.modificationTIme = newNote.modificationTime
		}
	}

	static func retrieveNote() -> Results<Note> {
		let realm = try! Realm()
		return realm.objects(Note).sorted("modificationTime", ascending: false)
	}
}