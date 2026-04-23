//
//  router.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 23/04/26.
//

import SwiftUI

@Observable
public class Router {
    var homePath = NavigationPath()
    var matchPath = NavigationPath()
    var upcomingPath = NavigationPath()
    
    func popToRoot() {
        homePath = NavigationPath()
        matchPath = NavigationPath()
        upcomingPath = NavigationPath()
    }
}
