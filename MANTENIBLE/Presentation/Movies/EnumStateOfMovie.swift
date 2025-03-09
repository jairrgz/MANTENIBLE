//
//  EnumStateOfMovie.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

enum EnumStateOfMovie {
    case idle
    case loading
    case loaded([Movie])
    case error(Error)
}
