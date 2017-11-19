//
//  ViewController.swift
//  Bill Spin
//
//  Created by Derek Montgomery on 11/19/17.
//  Copyright © 2017 Mighty Ike. All rights reserved.
//

import Cocoa
import Charts

class ViewController: NSViewController {

  @IBOutlet weak var pieChart: PieChartView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    pieChartUpdate()
  }
  
  func pieChartUpdate() {
    let entry1 = PieChartDataEntry(value: Double(7), label: "#1")
    let entry2 = PieChartDataEntry(value: Double(28), label: "#2")
    let entry3 = PieChartDataEntry(value: Double(56), label: "#3")
    let dataSet = PieChartDataSet(values: [entry1, entry2, entry3], label: "Widget Types")
    let data = PieChartData(dataSet: dataSet)
    pieChart.data = data
    pieChart.chartDescription?.text = "Share of Widgets by Type"
  
    //All other additions to this function will go here
  
    //This must stay at end of function
    pieChart.notifyDataSetChanged()
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }


}

