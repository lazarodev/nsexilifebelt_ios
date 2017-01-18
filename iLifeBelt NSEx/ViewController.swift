//
//  ViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 29/11/16.
//  Copyright © 2016 lazaro. All rights reserved.
//

import UIKit
import Charts

/*
 Clase que controla la vista del storyBoard y del menu principal.
 */
class ViewController: UIViewController {
    
    // Variable de tipo BarChartView (Libreria para mostrar las estadisticas)
    @IBOutlet weak var barchartView: BarChartView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    /*
        Metodo nativo cuando la vista sera mostrada.
      */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 1. create chart view
        
        //Ya hemos creado el chart cuando declaramos la variable en el inicio de la clase.
        
        // 2. Generate chart data entries
        // 2. Generar datos para la estadistica
        let yVals: [Double] = [873, 568, 937, 726, 696, 687, 180, 389, 90, 928, 890, 437]
        var entries = [BarChartDataEntry]()
        for (i, v) in yVals.enumerated() {
            let entry = BarChartDataEntry()
            entry.x = Double(i)
            entry.y = v
            
            entries.append(entry)
            
            // 3. Chart setup
            // 3. Configuracion de la estadistica
            let set = BarChartDataSet(values: entries, label: "BarChart stastics")
            let data = BarChartData(dataSet: set)
            barchartView.data = data
            // no data text
            // Que texto mostrar cuando no se le ha agregado ninguna informacion a la estadistica
            barchartView.noDataText = "No data avialable"
            // User interaction
            // Interaccion del usuario {habilitada}
            barchartView.isUserInteractionEnabled = false
            
            // 3a. style
            // 3a. Estilo
            barchartView.backgroundColor = Palette.Background
            barchartView.drawValueAboveBarEnabled = false
            barchartView.xAxis.drawGridLinesEnabled = false
            barchartView.leftAxis.drawGridLinesEnabled = false
            barchartView.rightAxis.drawGridLinesEnabled = false
            
            barchartView.leftAxis.drawLabelsEnabled = false
            barchartView.rightAxis.drawLabelsEnabled = false
            barchartView.leftAxis.labelTextColor = Palette.InfoText
            
            // 3b. animation
            // 3b. animacion
            barchartView.animate(xAxisDuration: 1.0)
            
            barchartView.legend.textColor = Palette.InfoText
            barchartView.chartDescription = nil
            
            // 4. add chart to UI
            // 4. Agregar Estadistica a la interfaz de usuario.
        }
    }

    /*
        Metodo nativo para manejar la memoria de esta clase
        */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
        Paleta de colores que se utilizara para el diseno de las estadisticas.
    */
    class Palette {
        //static let Background = UIColor(red: 17/255.0, green: 59/255.0, blue: 114/255.0, alpha: 1.0)
        static let Background = UIColor(red: 59/255.0, green: 17/255.0, blue: 110/255.0, alpha: 1.0)
        static let InfoText = UIColor(red: 16/255.0, green: 129/255.0, blue: 255/255.0, alpha: 1.0)
    }

}

