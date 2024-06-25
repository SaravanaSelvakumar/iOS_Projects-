//
//  Location.swift
//  Nucleo
//
//  Created by Apzzo on 12/04/22.
//

import UIKit

class Location: NSObject, NSCopying {
    var placeId = ""
    var placeName: String = ""
    
    var subStreet: String = ""
    var street: String = ""
    var subLocality: String = ""
    var address: String = ""
    var firstAddress: String = ""
    
    var appartMentNumber: String = ""
    var locality = ""
    var addressLine1: String = ""
    var addressLine2: String = ""
    
    var city: String = ""
    var state: String = ""
    var country: String = ""
    var zip: String = ""

    var latitude: Double = 0.0
    var longitude: Double = 0.0
    var isLocationUpdated = false
    
    var countryCode = ""
    var phoneNumberWithoutCountryCode = ""
    var phoneNumber = ""
    var pickupMapIcon = "social_delivery_maps_p"
    var destinationMapIcon = "social_delivery_maps_d"
    var sourceMapIcon = "meetup_me_box"
    
    var routePoints: String = ""
    var routeIndex = 0
    
    var distanceFromPreviousLocation: Double = 0.0
    var timeFromPreviousLocation = 0
    
    var distanceFromPickupLocation: Double = 0.0
    var timeFromPickupLocation = 0
    
    override init() {
        super.init()
    }
    
    init(placeName: String, street: String, address: String, appartMentNumber: String, addressLine1: String, addressLine2: String, city: String, state: String, country: String, zip: String, latitude: Double, longitude: Double) {
        self.placeName = placeName
        self.street = street
        self.address = address
        self.appartMentNumber = appartMentNumber
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.city = city
        self.state = state
        self.country = country
        self.zip = zip
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Location.init(placeName: self.placeName, street: self.street, address: self.address, appartMentNumber: self.appartMentNumber, addressLine1: self.addressLine1, addressLine2: self.addressLine2, city: self.city, state: self.state, country: self.country, zip: self.zip, latitude: self.latitude, longitude: self.longitude)
    }
    
    func isFromIndia() -> Bool {
        return (country.lowercased() == "india" || country.lowercased() == "in") ? true : false
    }
    
    func getDisplayAddressString() -> String {
        
        var addressComponent : [String] = [String]()
        
        if placeName != "" {
            addressComponent.append("\(placeName)")
        }
        
        if appartMentNumber != "" {
            if placeName != "" {
                addressComponent.append("\n\(appartMentNumber)")
            } else {
                addressComponent.append("\(appartMentNumber)")
            }
        }
        
        
        
        if addressLine1 != "" {
            if placeName == "" && appartMentNumber == "" {
                addressComponent.append("\(addressLine1)")
            } else {
                if placeName != "" && appartMentNumber == "" {
                    addressComponent.append("\n\(addressLine1)")
                } else {
                    addressComponent.append("\(addressLine1)")
                }
            }
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        var addressSubComponent : [String] = [String]()
        if city != "" {
            if !addressLine1.contains(city) {
                addressSubComponent.append("\(city)")
            }
        }
        if state != "" {
            if !addressLine1.contains(state) {
                addressSubComponent.append("\(state)")
            }
        }
        if country != "" {
            if !addressLine1.contains(country) {
                addressSubComponent.append("\(country)")
            }
        }
        if zip != "" {
            if !addressLine1.contains(zip) {
                addressSubComponent.append("\(zip)")
            }
        }
        
        var addressSubComponentString = ""
        if addressSubComponent.count > 0 {
            addressSubComponentString = addressSubComponent.joined(separator: ", ")
        }
        
        if addressSubComponentString != "" {
            if addressComponent.isEmpty {
                addressComponent.append("\(addressSubComponentString)")
            } else {
                addressComponent.append("\n\(addressSubComponentString)")
            }
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ")
        } else {
            return ""
        }
    }
    
    func getConfirmationDisplayAddressString() -> String {
        
        var addressComponent : [String] = [String]()
        
        if placeName != "" {
            addressComponent.append("\(placeName)")
        }
        
        if appartMentNumber != "" {
            if placeName != "" {
                addressComponent.append("\n\(appartMentNumber)")
            } else {
                addressComponent.append("\(appartMentNumber)")
            }
        }
        
        
        
        if addressLine1 != "" {
            if placeName == "" && appartMentNumber == "" {
                addressComponent.append("\(addressLine1)")
            } else {
                if placeName != "" && appartMentNumber == "" {
                    addressComponent.append("\n\(addressLine1)")
                } else {
                    addressComponent.append("\(addressLine1)")
                }
            }
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        var addressSubComponent : [String] = [String]()
        if city != "" {
            if !addressLine1.contains(city) {
                addressSubComponent.append("\(city)")
            }
        }
        
        var addressSubComponentString = ""
        if addressSubComponent.count > 0 {
            addressSubComponentString = addressSubComponent.joined(separator: ", ")
        }
        
        if addressSubComponentString != "" {
            if addressComponent.isEmpty {
                addressComponent.append("\(addressSubComponentString)")
            } else {
                addressComponent.append("\n\(addressSubComponentString)")
            }
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ")
        } else {
            return ""
        }
    }
    
    func getDisplayAddressStringWithoutCountry() -> String {
        
        var addressComponent : [String] = [String]()
        
        if placeName != "" {
            addressComponent.append("\(placeName)")
        }
        
        if appartMentNumber != "" {
            if placeName != "" {
                addressComponent.append("\n\(appartMentNumber)")
            } else {
                addressComponent.append("\(appartMentNumber)")
            }
        }
        
        
        
        if addressLine1 != "" {
            if placeName == "" && appartMentNumber == "" {
                addressComponent.append("\(addressLine1)")
            } else {
                if placeName != "" && appartMentNumber == "" {
                    addressComponent.append("\n\(addressLine1)")
                } else {
                    addressComponent.append("\(addressLine1)")
                }
            }
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        var addressSubComponent : [String] = [String]()
        if city != "" {
            if !addressLine1.contains(city) {
                addressSubComponent.append("\n\(city)")
            }
        }
        
        if state != "" {
            var stateWithZip = ""
            if !addressLine1.contains(state) {
                stateWithZip = state
            }
            
            if zip != "" {
                if !addressLine1.contains(zip) {
                    stateWithZip = "\(stateWithZip) - \(zip)."
                }
            }
            
            if stateWithZip != "" {
                addressSubComponent.append("\(stateWithZip)")
            }
        }
        
        
        
        var addressSubComponentString = ""
        if addressSubComponent.count > 0 {
            addressSubComponentString = addressSubComponent.joined(separator: ", ")
        }
        
        if addressSubComponentString != "" {
            if addressComponent.isEmpty {
                addressComponent.append("\(addressSubComponentString)")
            } else {
                addressComponent.append("\n\(addressSubComponentString)")
            }
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ")
        } else {
            return ""
        }
    }
    
    func getDisplayAddressWithoutCountryZipString() -> String {
        
        var addressComponent : [String] = [String]()
        
        if placeName != "" {
            addressComponent.append("\(placeName)")
        }
        
        if appartMentNumber != "" {
            if placeName != "" {
                addressComponent.append("\n\(appartMentNumber)")
            } else {
                addressComponent.append("\(appartMentNumber)")
            }
        }
        
        
        
        if addressLine1 != "" {
            if placeName == "" && appartMentNumber == "" {
                addressComponent.append("\(addressLine1)")
            } else {
                if placeName != "" && appartMentNumber == "" {
                    addressComponent.append("\n\(addressLine1)")
                } else {
                    addressComponent.append("\(addressLine1)")
                }
            }
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        if city != "" {
            addressComponent.append("\(city)")
        }
        if state != "" {
            addressComponent.append("\(state)")
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ")
        } else {
            return ""
        }
    }

    func getDisplayStoreAddressString() -> String {
        
        var addressComponent : [String] = [String]()
        
        if appartMentNumber != "" {
            if placeName != "" {
                addressComponent.append("\n\(appartMentNumber)")
            } else {
                addressComponent.append("\(appartMentNumber)")
            }
        }
        
        
        
        if addressLine1 != "" {
            if placeName == "" && appartMentNumber == "" {
                addressComponent.append("\(addressLine1)")
            } else {
                if placeName != "" && appartMentNumber == "" {
                    addressComponent.append("\n\(addressLine1)")
                } else {
                    addressComponent.append("\(addressLine1)")
                }
            }
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        
        var addressSubComponent : [String] = [String]()
        if city != "" {
            addressSubComponent.append("\(city)")
        }
        if state != "" {
            addressSubComponent.append("\(state)")
        }
        
        var addressSubComponentString = ""
        if addressSubComponent.count > 0 {
            addressSubComponentString = addressSubComponent.joined(separator: ", ")
        }
        
        if addressSubComponentString != "" {
            addressComponent.append("\n\(addressSubComponentString)")
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ")
        } else {
            return ""
        }
    }
    
    func getDisplayFirstAddressString() -> String {
        
        var addressComponent : [String] = [String]()
        
        if placeName != "" {
            addressComponent.append(placeName)
        }
        
        if appartMentNumber != "" {
            if placeName != "" {
                addressComponent.append("\n\(appartMentNumber)")
            } else {
                addressComponent.append("\(appartMentNumber)")
            }
        }
        
        
        
        if addressLine1 != "" {
            if placeName == "" && appartMentNumber == "" {
                addressComponent.append("\(addressLine1)")
            } else {
                if placeName != "" && appartMentNumber == "" {
                    addressComponent.append("\n\(addressLine1)")
                } else {
                    addressComponent.append("\(addressLine1)")
                }
            }
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        
        var addressSubComponent : [String] = [String]()
        if city != "" {
            addressSubComponent.append("\(city)")
        }
        if state != "" {
            addressSubComponent.append("\(state)")
        }
        
        var addressSubComponentString = ""
        if addressSubComponent.count > 0 {
            addressSubComponentString = addressSubComponent.joined(separator: ", ")
        }
        
        if addressSubComponentString != "" {
            addressComponent.append("\n\(addressSubComponentString)")
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ")
        } else {
            return ""
        }
    }
    
    func getFlatNoApartmentNo() -> String {
        var addressComponent : [String] = [String]()
        
        if placeName != "" {
            addressComponent.append("\(placeName)")
        }
        
        if appartMentNumber != "" {
            if placeName == "" {
                addressComponent.append("\(appartMentNumber)")
            }
        }
        
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ")
        } else {
            return ""
        }
    }
    
    func getFirstAddress() -> String {
        var addressComponent : [String] = [String]()
        
        if placeName != "" {
            addressComponent.append("\(placeName)")
        }
        
        if appartMentNumber != "" {
            if placeName != "" {
                addressComponent.append("\n\(appartMentNumber)")
            } else {
                addressComponent.append("\(appartMentNumber)")
            }
        }
        
        if addressLine1 != "" {
            addressComponent.append("\(addressLine1)")
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ")
        } else {
            return ""
        }
    }
    
    func getDisplayAddressStringWithoutPlaceName() -> String {
        
        var addressComponent : [String] = [String]()
        
        if appartMentNumber != "" {
            addressComponent.append("\(appartMentNumber)")
        }
        
        if addressLine1 != "" {
            addressComponent.append("\(addressLine1)")
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        if city != "" {
            addressComponent.append("\(city)")
        }
        if state != "" {
            addressComponent.append("\(state).")
        }
        
        if country != "" {
            addressComponent.append("\(country)")
        }
        if zip != "" {
            addressComponent.append("\(zip)")
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ").trim()
        } else {
            return ""
        }
    }
    
    func getDisplayAddressForShoppingList() -> String {
        
        var addressComponent : [String] = [String]()
        
        if appartMentNumber != "" {
            addressComponent.append("\(appartMentNumber)")
        }
        
        if addressLine1 != "" {
            addressComponent.append("\(addressLine1)")
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        if city != "" {
            addressComponent.append("\(city)")
        }
        
        if addressComponent.count > 0 {
            return "\(addressComponent.joined(separator: ", ").trim())."
        } else {
            return ""
        }
    }
    
    func getDisplayAddressForShoppingList1() -> String {
        
        var addressComponent : [String] = [String]()
        
        if appartMentNumber != "" {
            addressComponent.append("\(appartMentNumber)")
        }
        
        if addressLine1 != "" {
            addressComponent.append("\(addressLine1)")
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        if city != "" {
            addressComponent.append("\n\(city)")
        }
        
        if addressComponent.count > 0 {
            return "\(addressComponent.joined(separator: ", ").trim())."
        } else {
            return ""
        }
    }
    
    func getCityName() -> String {
        if city.trim().isEmpty {
            let addComponent = addressLine1.split(separator: ",")
            if addComponent.count > 0 {
                let cityName = "\(addComponent[addComponent.count - 1])".trim()
                return cityName
            }
        }
        return city.capitalizingFirstLetter()
    }
    
    func getDisplayAddressStringWithoutPlaceName1() -> String {
        
        var addressComponent : [String] = [String]()
        
        if appartMentNumber != "" {
            addressComponent.append("\(appartMentNumber)")
        }
        
        if addressLine1 != "" {
            addressComponent.append("\(addressLine1)")
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        if city != "" {
            addressComponent.append("\(city)")
        }
        if state != "" {
            addressComponent.append("\(state)")
        }
        
        if country != "" {
            addressComponent.append("\(country)")
        }
        if zip != "" {
            addressComponent.append("\(zip)")
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ").trim()
        } else {
            return ""
        }
    }
    
    func getShotAddress() -> String {
        var addressSubComponent : [String] = [String]()
        if subLocality != "" {
            addressSubComponent.append("\(subLocality)")
        }
        
        if city != "" {
            addressSubComponent.append("\(city)")
        }
        
        if state != "" {
            addressSubComponent.append("\(state)")
        }
        
        return !addressSubComponent.isEmpty ?  addressSubComponent.joined(separator: ", ") : ""
    }
    
    
    func getShortDisplayAddressString() -> String {
        
        var addressComponent : [String] = [String]()
        
        if appartMentNumber != "" {
            addressComponent.append("\(appartMentNumber)")
        }
        
        if addressLine1 != "" {
            addressComponent.append("\(addressLine1)")
        }
        
        if addressLine2 != "" {
            addressComponent.append("\(addressLine2)")
        }
        
        if city != "" {
            addressComponent.append("\(city)")
        }
        
        if state != "" {
            addressComponent.append("\(state).")
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ").trim()
        } else {
            return ""
        }
    }
    
    func getDisplaySummaryAddressString() -> String {
        
        var addressComponent : [String] = [String]()
        
        if placeName != "" {
            addressComponent.append("\(placeName)")
        }
        
        
        
        if addressLine1 != "" && placeName == "" {
            if placeName == "" && appartMentNumber == "" {
                addressComponent.append("\(addressLine1)")
            } else {
                if placeName != "" && appartMentNumber == "" {
                    addressComponent.append("\n\(addressLine1)")
                } else {
                    addressComponent.append("\(addressLine1)")
                }
            }
        }
        
        var addressSubComponent : [String] = [String]()
        if city != "" {
            addressSubComponent.append("\(city)")
        }
        if state != "" {
            addressSubComponent.append("\(state)")
        }
        if country != "" {
            addressSubComponent.append("\(country)")
        }
        
        var addressSubComponentString = ""
        if addressSubComponent.count > 0 {
            addressSubComponentString = addressSubComponent.joined(separator: ", ")
        }
        
        if addressSubComponentString != "" {
            if addressComponent.isEmpty {
                addressComponent.append("\(addressSubComponentString)")
            } else {
                addressComponent.append("\n\(addressSubComponentString)")
            }
        }
        
        if addressComponent.count > 0 {
            return addressComponent.joined(separator: ", ")
        } else {
            return ""
        }
    }
}
