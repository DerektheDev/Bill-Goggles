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
  
  let daysInMonth = 1...31
  var dataPoints:[PieChartDataEntry] = []

  @IBOutlet weak var pieChart: PieChartView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    pieChartUpdate()
  }
  
  func pieChartUpdate() {
    
    for day in daysInMonth {
      let dataPoint = PieChartDataEntry(value: Double(1), label: "\(day)")
      dataPoints.append(dataPoint)
    }
    
    let dataSet = PieChartDataSet(values: dataPoints, label: "Bills this month")
    let data = PieChartData(dataSet: dataSet)
    pieChart.data = data
//    pieChart.chartDescription?.text = "Share of Widgets by Type"
  
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

