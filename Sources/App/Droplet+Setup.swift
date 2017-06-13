
@_exported import Vapor

extension Droplet {
    public func setup() throws {
        
        try collection(Routes.self) // creates a list of routes from Routes.swift
    }
}
