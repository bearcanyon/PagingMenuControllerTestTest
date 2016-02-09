//
//  ViewController.swift
//  ScrollMenuAndCollectionView
//
//  Created by KumagaiNaoki on 2016/02/01.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit
import PagingMenuController

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1ページ目で表示させるコントローラーを指定する
        let page_1 = self.storyboard?.instantiateViewControllerWithIdentifier("PagingMenuController_1") as! PagingMenuController_1ViewController
        page_1.title = "1ページ目"
        
        //2ページ目で表示させるコントローラーを指定する
        let page_2 = self.storyboard?.instantiateViewControllerWithIdentifier("PagingMenuController_2") as! PagingMenuController_2ViewController
        page_2.title = "2ページ目"
        
        //3ページ目で表示させるコントローラーを指定する
        let page_3 = self.storyboard?.instantiateViewControllerWithIdentifier("PagingMenuController_3") as! PagingMenuController_3ViewController
        page_3.title = "3ページ目"
        
        let page_4 = self.storyboard?.instantiateViewControllerWithIdentifier("PagingMenuController_4") as! PagingMenuController_4ViewController
        page_4.title = "4ページ目"
        let viewControllers = [page_1, page_2, page_3, page_4]
        
        
        //表示オプション
        let options = PagingMenuOptions()   //オプションをインスタンス化
        
        //最初に表示させるページ番号
        options.defaultPage = 0
        
        //スワイプでページ間を移動させるか
        options.scrollEnabled = true
        
        //メニューバーの背景色
        options.backgroundColor = UIColor.whiteColor()
        
        //選択中のメニューバーの背景色
        options.selectedBackgroundColor = UIColor.whiteColor()
        
        //メニューのフォントサイズ
        options.font = UIFont.systemFontOfSize(14)
        
        //選択中のメニューのフォントサイズ
        options.selectedFont = UIFont.systemFontOfSize(14)
        
        //メニューの位置
        options.menuPosition = .Top
        
        //メニューの高さ
        options.menuHeight = 44
        
        //メニューのマージン
        options.menuItemMargin = 5
        
        //ページ移動をするときのアニメーションスピード
        options.animationDuration = 0.3
        
        //選択中のメニューの下線の色
        options.menuItemMode = .Underline(height: 3, color: UIColor.blackColor(), horizontalPadding: 0, verticalPadding: 0)
        
        //メニューの表示のされ方
        options.menuDisplayMode = .SegmentedControl
        
        
        let pagingMenuController = PagingMenuController(viewControllers: viewControllers, options: options)
        pagingMenuController.view.frame.origin.y += 20
        pagingMenuController.view.frame.size.height -= 20
        
        self.addChildViewController(pagingMenuController)
        self.view.addSubview(pagingMenuController.view)
        pagingMenuController.didMoveToParentViewController(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}