//
//  ViewController.swift
//  ActionOutlet
//
//  Created by 林暐潔 on 2016/10/29.
//  Copyright © 2016年 林暐潔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Switch
    @IBOutlet weak var asiaSW: UISwitch!
    @IBOutlet weak var europeSW: UISwitch!
    @IBOutlet weak var americaSW: UISwitch!
    @IBOutlet weak var australiaSW: UISwitch!
    
    //月收入
    @IBOutlet weak var moneySL: UISlider!
    @IBOutlet weak var showMoney: UILabel!
    
    //天數
    @IBOutlet weak var daySL: UISlider!
    @IBOutlet weak var showDay: UILabel!
    
    //旅行方式
    @IBOutlet weak var modeSegment: UISegmentedControl!
    
    //顯示Label
    @IBOutlet weak var showMessageTwo: UILabel!

    
    
    //亞洲
    @IBAction func asiaSW(_ sender: UISwitch) {
        Reset()
        if asiaSW.isOn {
            moneySL.value = 40000
            showMoney.text = String(40000)
            daySL.value = 7
            showDay.text = String(7)
            modeSegment.selectedSegmentIndex = 0
            showMessageTwo.text = "月收入：40000\n年假：7天以上\n適合『自助旅行』"
            europeSW.isOn = false
            americaSW.isOn = false
            australiaSW.isOn = false
        } else {
            Reset()
        }
    }
    
    //歐洲
    @IBAction func europeSW(_ sender: UISwitch) {
        Reset()
        if europeSW.isOn {
            moneySL.value = 80000
            showMoney.text = String(80000)
            daySL.value = 20
            showDay.text = String(20)
            modeSegment.selectedSegmentIndex = 1
            showMessageTwo.text = "月收入：80000\n年假：20天以上\n適合『跟團旅行』"
            asiaSW.isOn = false
            americaSW.isOn = false
            australiaSW.isOn = false
        } else {
            Reset()
        }
    }
    
    //美洲
    @IBAction func americaSW(_ sender: UISwitch) {
        Reset()
        if americaSW.isOn {
            moneySL.value = 70000
            showMoney.text = String(70000)
            daySL.value = 15
            showDay.text = String(15)
            modeSegment.selectedSegmentIndex = 1
            showMessageTwo.text = "月收入：70000\n年假：15天以上\n適合『跟團旅行』"
            asiaSW.isOn = false
            europeSW.isOn = false
            australiaSW.isOn = false
        } else {
            Reset()
        }
    }
    
    //澳洲
    @IBAction func australiaSW(_ sender: UISwitch) {
        Reset()
        if australiaSW.isOn {
            moneySL.value = 50000
            showMoney.text = String(50000)
            daySL.value = 10
            showDay.text = String(10)
            modeSegment.selectedSegmentIndex = 0
            showMessageTwo.text = "月收入：50000\n年假：10天以上\n適合『自助旅行』"
            asiaSW.isOn = false
            europeSW.isOn = false
            americaSW.isOn = false
        } else {
            Reset()
        }
    }
    
    func Reset() {
        moneySL.value = 0
        showMoney.text = String(0)
        daySL.value = 0
        showDay.text = String(0)
        showMessageTwo.text = "顯示您所選區域適合條件"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Reset()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

