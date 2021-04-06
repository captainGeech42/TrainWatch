//
//  LineData.swift
//  TrainWatch
//
//  Created by Zander Work on 4/5/21.
//

let lineData: [Line] = [
    Line(lineCode: "BL", displayName: "Blue", startStationCode: "J03", endStationCode: "G05", internalDestination1: "", internalDestination2: ""),
    Line(lineCode: "GR", displayName: "Green", startStationCode: "F11", endStationCode: "E10", internalDestination1: "", internalDestination2: "")
]

let linesData = Lines(lines: lineData)
