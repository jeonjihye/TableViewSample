//
//  BookTableViewController.swift
//  TableViewSample
//
//  Created by Admin on 2021/08/24.
//

import UIKit

class BookTableViewController: UITableViewController {
    
    var books:[Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        books.append(Book(title: "열혈C++", writer: "홍길동", coverImage: "img1"))
        books.append(Book(title: "열혈C#", writer: "김길동", coverImage: "img2"))
        books.append(Book(title: "열혈Swift", writer: "최길동", coverImage: "img3"))

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    // Section 개수 호출
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    // Cell 개수 호출
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }

    // 해당 인덱스에 해당하는 셀을 만든 후 셀 리턴
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // 재사용 가능한 셀이 있으면 반환 > 있으면 있는거 주고 없으면 새로 생성해서
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier" , for : indexPath)
        let book = books[indexPath.row]
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = book.writer
        cell.imageView?.image = UIImage(named: book.coverImage)
        
        
        
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let bookDetailViewController = segue.destination as? BookDetailViewController,
           let selectedRowIndex = tableView.indexPathForSelectedRow?.row {
            bookDetailViewController.book = books[selectedRowIndex]
        }
    }


}
