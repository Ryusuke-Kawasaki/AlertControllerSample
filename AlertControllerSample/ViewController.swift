//
//  ViewController.swift
//  AlertControllerSample
//
//  Created by 川崎 隆介 on 2015/12/13.
//  Copyright (c) 2015年 川崎 隆介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func pushAlertOKButton(_ sender:UIAlertAction!){
        print("push OK Button")
    }
    
    @IBAction func pushButton(_ sender: Any) {
        //アラートコントローラ生成
        let alertController = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:
            {(sender:UIAlertAction!) in
                print("push OK Button")
            }
        )
        
        //let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: pushAlertOKButton)

        //キャンセルアクション生成
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        //デストラクティブアクション生成
        let destructiveAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.destructive, handler: nil)
        //アクション登録
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        alertController.addAction(destructiveAction)
        //表示
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

