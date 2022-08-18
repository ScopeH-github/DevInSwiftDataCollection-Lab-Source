import SwiftUI

public struct Athlete: Identifiable {
    public var id = UUID()
    var name: String
    var distance: Int
    var score: Double
    
    init(name: String, distance: Int, score: Double) {
        self.name = name
        self.distance = distance
        self.score = score
    }
}

public var listOfAthlete: [Athlete] = [
    Athlete(name: "Running", distance: 3000, score: 4),
    Athlete(name: "Swimming", distance: 300, score: 2),
    Athlete(name: "Walking", distance: 4000, score: 5)
]
