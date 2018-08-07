//
//  ViewController.swift
//  4choicesQuiz
//
//  Created by Riku Uchida on 2018/08/07.
//  Copyright © 2018年 eujy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    
    @IBOutlet weak var answerText: UILabel!
    @IBOutlet weak var Next: UIButton!
    
    var CorrectAns = String()
    var LastNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        RandomQuestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func RandomQuestions(){
        Hide()
        var RandomNum = arc4random() % 4
        RandomNum += 1
        
        if(LastNum != RandomNum){
            switch (RandomNum) {
            case 1:
                question.text = "やっぱあれってすげえよな。最後までチョコたっぷりだし"
                answer1.setTitle("ポッキー", for: UIControlState.normal)
                answer2.setTitle("パックンチョ", for: UIControlState.normal)
                answer3.setTitle("トッポ", for: UIControlState.normal)
                answer4.setTitle("コアラのマーチ", for: UIControlState.normal)
                CorrectAns = "3"
                LastNum = 1
                break
            case 2:
                question.text = "最後に勝つのはもちろん"
                answer1.setTitle("正義", for: UIControlState.normal)
                answer2.setTitle("俺", for: UIControlState.normal)
                answer3.setTitle("人間", for: UIControlState.normal)
                answer4.setTitle("それ以外", for: UIControlState.normal)
                CorrectAns = "4"
                LastNum = 2
                break
            case 3:
                question.text = "俺の〇〇についてこれるか"
                answer1.setTitle("気持ち", for: UIControlState.normal)
                answer2.setTitle("速さ", for: UIControlState.normal)
                answer3.setTitle("R", for: UIControlState.normal)
                answer4.setTitle("素晴らしさ", for: UIControlState.normal)
                CorrectAns = "3"
                LastNum = 3
                break
            case 4:
                question.text = "一番信じられないのは"
                answer1.setTitle("勉強してね〜やべ〜", for: UIControlState.normal)
                answer2.setTitle("今日寝てね〜やべ〜", for: UIControlState.normal)
                answer3.setTitle("怒らないから言ってみなさい", for: UIControlState.normal)
                answer4.setTitle("絶対大丈夫", for: UIControlState.normal)
                CorrectAns = "4"
                LastNum = 4
                break
            default:
                break
            }
        }else{
            RandomQuestions()
        }
        
    }
    
    func Hide() {
        answerText.isHidden = true
        Next.isHidden = true
    }
    func UnHide() {
        answerText.isHidden = false
        Next.isHidden = false
    }
    
    @IBAction func Button1Action(_ sender: Any) {
        UnHide()
        if (CorrectAns == "1"){
            answerText.text = "あたり〜〜〜〜〜〜〜"
        }else{
            answerText.text = "ハズレ〜〜〜〜〜〜〜"
        }
    }
    @IBAction func Button2Action(_ sender: Any) {
        UnHide()
        if (CorrectAns == "2"){
            answerText.text = "あたり〜〜〜〜〜〜〜"
        }else{
            answerText.text = "ハズレ〜〜〜〜〜〜〜"
        }
    }
    @IBAction func Button3Action(_ sender: Any) {
        UnHide()
        if (CorrectAns == "3"){
            answerText.text = "あたり〜〜〜〜〜〜〜"
        }else{
            answerText.text = "ハズレ〜〜〜〜〜〜〜"
        }
    }
    @IBAction func Button4Action(_ sender: Any) {
        UnHide()
        if (CorrectAns == "4"){
            answerText.text = "あたり〜〜〜〜〜〜〜"
        }else{
            answerText.text = "ハズレ〜〜〜〜〜〜〜"
        }
    }
    
    @IBAction func Next(_ sender: Any) {
        RandomQuestions()
        Hide()
    }
    

}

