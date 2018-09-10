//
//  StateController.swift
//  StateFlags_Swift
//
//  Created by John Tate on 9/10/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import Foundation

class StateController {
    
    static let shared = StateController()
    // can only initialize StateController from itself
    private init() {
        self.states = createAllStates()
    }
    
    var states: [State] = []
    
    func createAllStates() -> [State] {
        
        var states: [State] = []
        for stateName in StateController.stateNames {
            guard let index = StateController.stateNames.index(of: stateName) else { return [] }
            let abbreviation = StateController.stateAbbreviations[index]
            let state = State(name: stateName, abbreviation: abbreviation)
            states.append(state)
        }
        return states
    }
    
    // static so we can access it off of the class and don't have to use a shared instance
    static let stateAbbreviations = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]
    
    static let stateNames = ["Alaska", "Alabama", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
}
