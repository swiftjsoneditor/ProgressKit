//
//  ViewController.swift
//  ProgressKit
//
//  Created by Kauntey Suryawanshi on 30/06/15.
//  Copyright (c) 2015 Kauntey Suryawanshi. All rights reserved.
//

import Cocoa

class DeterminateViewController: NSViewController {

    dynamic var liveProgress: Bool = false
    dynamic var labelPercentage: String = "30%"

    @IBOutlet weak var circularView1: CircularProgressView!
    @IBOutlet weak var circularView2: CircularProgressView!
    @IBOutlet weak var circularView3: CircularProgressView!
    @IBOutlet weak var circularView4: CircularProgressView!
    @IBOutlet weak var circularView5: CircularProgressView!
    @IBOutlet weak var slider: NSSlider!

    @IBAction func sliderDragged(sender: NSSlider) {

        let event = NSApplication.sharedApplication().currentEvent
        let dragStart = event!.type == NSEventType.LeftMouseDown
        let dragEnd = event!.type == NSEventType.LeftMouseUp
        let dragging = event!.type == NSEventType.LeftMouseDragged

        if liveProgress || dragEnd {
            println("Slider value = \(sender.floatValue)")
            setProgress(CGFloat(sender.floatValue))
        }
        labelPercentage = "\(Int(sender.floatValue * 100))%"
    }

    func setProgress(progress: CGFloat) {
        circularView1.setProgressValue(progress, animated: true)
        circularView2.setProgressValue(progress, animated: true)
        circularView3.setProgressValue(progress, animated: true)
        circularView4.setProgressValue(progress, animated: true)
        circularView5.setProgressValue(progress, animated: false)
    }
    
    override func viewDidLoad() {
        preferredContentSize = NSMakeSize(500, 500)
    }
    
//    @IBAction func continousSlider(sender: NSSlider) {
//        let sliderValue: CGFloat = CGFloat(sender.floatValue)
//        progressView.setProgressValue(sliderValue, animated: true)
//        small.setProgressValue(sliderValue, animated: true)
//        medium.setProgressValue(sliderValue, animated: true)
//        large.setProgressValue(sliderValue, animated: true)
//    }
//    
//    
//    @IBOutlet weak var sliderOne: NSSlider!
//    @IBAction func buttonPressed(sender: AnyObject) {
//        let sliderValue: CGFloat = CGFloat(sliderOne.floatValue)
//        progressView.setProgressValue(sliderValue, animated: true)
//        small.setProgressValue(sliderValue, animated: true)
//        medium.setProgressValue(sliderValue, animated: true)
//        large.setProgressValue(sliderValue, animated: true)
//    }
}

