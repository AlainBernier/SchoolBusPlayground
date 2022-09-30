/*: 
 ⬇️ *Vous pouvez ignorez le code ci-dessous, il nous permet juste d'initialiser et de visualiser le canvas à droite.*
 */
import PlaygroundSupport
let canvas = Canvas()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = canvas

/*:
 - - -
 # Découverte du canevas
 Le canevas, c'est l'étendue de pelouse verte qui se trouve sur la droite 🌿.
 Sur ce canevas, nous allons pouvoir dessiner notre route. Et nous allons faire cela en utilisant les fonctions proposées par le canevas :
 ## Route
 
 `canvas.createRoadSection()`
 - 🛣 Cette fonction permet de **créer une section de route**. A chaque appel de cette fonction, une nouvelle section de route est crée.
 
 `canvas.createHomeRoadSection()`
 - 🛣🏠 Similaire à la précédente, cette fonction permet de créer une section de route **qui contient une maison**.
 
 `canvas.createSchoolRoadSection()`
 - 🛣🏫 Similaire à la précédente, cette fonction permet de créer une section de route **qui contient une école**.
 
 ## Bus
 `canvas.moveBusForward()`
 
 - 🚌➡️ Cette fonction permet de faire avancer le bus jusqu'à la section de route suivante. Attention, le bus ne peut pas avancer s'il n'y a plus de route devant lui.
 
 `canvas.stopBus()`
 - 🚌🛑 Cette fonction permet de faire marquer un arrêt au bus.
 
 ## A vous de jouer !
 */

var numberOfStudentAtSchool = 0

class Bus {
    var driverName: String
    var seats = 20
    var occupiedSeats = 0
    let numberOfWheel = 4
    
    init(driverName: String) {
        self.driverName = driverName
    }
    
    func moveForward() {
        canvas.moveBusForward()
    }
}

class SchoolBus: Bus {
    var schoolName = ""
}

var schoolBus = SchoolBus(driverName: "Martine")
schoolBus.seats = 40
schoolBus.moveForward()


enum RoadSectionType {
    case plain
    case home
    case school
}

class RoadSection {
    var type: RoadSectionType

    init(type: RoadSectionType) {
        self.type = type

        switch type {
            case .plain:
                canvas.createRoadSection()
            case .home:
                canvas.createHomeRoadSection()
            case .school:
                canvas.createSchoolRoadSection()
        }
    }
}

class Road {
    static let maxLenght = 77
    var sections: [RoadSection] = []
    
    init(lenght: Int) {
        var lenght = lenght
        if lenght > Road.maxLenght {
            lenght = Road.maxLenght
        }
        for _ in 0..<lenght {
            self.sections.append(RoadSection(type: .plain))
        }
    }

    static func createStraightRoad() -> Road {
        return Road(lenght: 11)
    }
}

RoadSection(type: .plain)
RoadSection(type: .home)
RoadSection(type: .school)







