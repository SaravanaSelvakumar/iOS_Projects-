//
//  Approval+Enum.swift
//  Nucleo
//
//  Created by Apzzo on 15/12/21.
//

import Foundation
extension ApprovalVC {
  enum ApproachType: String {
    case appointment
    case consultation
    case visitTrend
    case shiftPlanner
    case temperature
    case approval
    case support
    case qrcode
    case offers

    var name: String {
      switch self {
      case .appointment: return "Appointment"
      case .consultation: return "Consultation"
      case .visitTrend: return "Visit Trend"
      case .shiftPlanner: return "Shift Planner"
      case .temperature: return "Temperature"
      case .approval: return "Approval"
      case .support: return "Support"
      case .qrcode: return "QR code"
      case .offers: return "Offers"
      }
    }

    var image: String {
      switch self {
      case .appointment: return "Appointment_Image"
      case .consultation: return "Consultation_Image"
      case .visitTrend: return "Visit Trend"
      case .shiftPlanner: return "ShiftPlanner_Image"
      case .temperature: return "Temperature_Image"
      case .approval: return "Approvals_Image"
      case .support: return "Approach_Support_Image"
      case .qrcode: return "QRCode_Image"
      case .offers: return "Offers_Image"
      }
    }

    var backgroundColor: String {
      switch self {
      case .appointment: return "#B6E3FF"
      case .consultation: return "#E9FCF8"
      case .visitTrend: return "#FFF4ED"
      case .shiftPlanner: return "#FDE4F4"
      case .temperature: return "#B4FFEF"
      case .approval: return "#D7D7D7"
      case .support: return "#D1F3FF"
      case .qrcode: return "#FFE3E3"
      case .offers: return "#FFF1D2"
      }
    }

    var labelColor: String {
      switch self {
      case .appointment: return "#237EB4"
      case .consultation: return "#407B6F"
      case .visitTrend: return "#FF6300"
      case .shiftPlanner: return "#BF4D96"
      case .temperature: return "#00A481"
      case .approval: return "#6F6D6E"
      case .support: return "#006C92"
      case .qrcode: return "#FF6969"
      case .offers: return "#FFAD00"
      }
    }

    var borderColor: String {
      switch self {
      case .appointment: return "#92D5FF"
      case .consultation: return "#B4FFEF"
      case .visitTrend: return "#FFCDAD"
      case .shiftPlanner: return "#FFBCE6"
      case .temperature: return "#78FCE0"
      case .approval: return "#A09D9F"
      case .support: return "#9CE5FF"
      case .qrcode: return "#FF9393"
      case .offers: return "#FFAD00"
      }
    }
  }
}
