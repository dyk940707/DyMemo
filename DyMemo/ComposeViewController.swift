//
//  ComposeViewController.swift
//  DyMemo
//
//  Created by Doyun on 05/07/2019.
//  Copyright © 2019 Doyun. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    //취소 버튼 기능 구현
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    //새로운 메모 저장
    @IBAction func save(_ sender: Any) {
        let memo = memoTextView.text
        let newMemo = Memo(content: memo ?? "")
        Memo.dummyMemoList.append(newMemo)
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var memoTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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