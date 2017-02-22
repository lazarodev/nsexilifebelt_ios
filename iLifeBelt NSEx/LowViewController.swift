//
//  LowViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 22/02/17.
//  Copyright © 2017 lazaro. All rights reserved.
//

import UIKit
import Charts

class LowViewController: UIViewController {

    var pieChart: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textos = ["Católicos", "Evángelicos", "Otros"]
        let porcents = [41.0, 58.0, 1.0]
        
        pieChart = PieChartView(frame: self.view.bounds)
        self.view.addSubview(pieChart!)
        pieChart.chartDescription?.text = "Datos de la revista contra Poder"
        setChart(dataPoints: textos, values: porcents)
    }
    
    func setChart(dataPoints: [String], values: [Double]) {
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry1 = PieChartDataEntry(value: values[i], label: dataPoints[i])
            dataEntries.append(dataEntry1)
        }
        
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "")
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        pieChart.data = pieChartData
        
        var colors: [UIColor] = []
        
        for _ in 0..<dataPoints.count {
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        
        pieChartDataSet.colors = colors
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
