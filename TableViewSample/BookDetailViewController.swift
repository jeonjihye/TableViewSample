//
//  BookDetailViewController.swift
//  TableViewSample
//
//  Created by Admin on 2021/08/24.
//

import UIKit

class BookDetailViewController: UIViewController {

    var book:Book?
    
    @IBOutlet weak var writerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.writerLabel.text = self.book?.writer
        
        if let imageName = self.book?.coverImage{
            self.imageView.image = UIImage(named: imageName)
        }
        
        // 네비게이션 타이틀 지정
        self.title = self.book?.title
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
