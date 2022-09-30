class Road {
   static let maxLength = 77
   var sections = [RoadSection]()

   init(length: Int) {
      var length = length
      if length > Road.maxLength {
         length = Road.maxLength
      }

      for _ in 0..<length {
         self.sections.append(RoadSection())
      }
   }
}