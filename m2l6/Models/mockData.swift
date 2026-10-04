//
//  mockData.swift
//  m2l6
//
//  Created by AndreyM on 04.10.2026.
//

import Foundation

struct TableSection{
    let header : String?
    let footer : String?
    var items : [TableRow]
    
    static func mockData() -> [TableSection]{
        [
        TableSection(header: nil, footer: nil, items: [
            TableRow(image: "airplane", title: "Авиарежим", sub: nil, accessoryType: .toggle, typePage: .airplane),
            TableRow(image: "wifi", title: "WI-FI", sub: nil, accessoryType: .arrow, typePage: .wifi),
            TableRow(image: "", title: "Bluetooth", sub: nil, accessoryType: .arrow, typePage: .bluetooth),
            TableRow(image: "cellularbars", title: "Сотовая связь", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "personalhotspot", title: "Режим модема", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "battery.100percent", title: "Аккумулятор", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "network", title: "VPN", sub: nil, accessoryType: .toggle, typePage: .airplane)
        ]),
        
        TableSection(header: nil, footer: nil, items: [
            TableRow(image: "gear", title: "Основные", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "accessibility", title: "Универсальный доступ", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "camera", title: "Камера", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "sparkles", title: "Обои", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "circle.lefthalf.filled", title: "Оформление", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "magnifyingglass", title: "Поиск", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "switch.2", title: "Пункт управления", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "widget.extralarge", title: "Режим ожидания", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "iphone.gen2", title: "Экран 'Домой', и библиотека приложений", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "sun.max.fill", title: "Экран и яркость", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "siri", title: "Siri", sub: nil, accessoryType: .arrow, typePage: .airplane),
        ]),
        TableSection(header: nil, footer: nil, items: [
            TableRow(image: "waveform", title: "Уведомления", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "speaker.wave.3.fill", title: "Звуки и вибрации", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "moon", title: "Фокусирование", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "hourglass", title: "Экранное время", sub: nil, accessoryType: .arrow, typePage: .airplane),
        ]),
        TableSection(header: nil, footer: nil, items: [
            TableRow(image: "face.smiling", title: "Face ID и код-пароль", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "sos", title: "Экстренный вызов - SOS", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "hand.raised", title: "Конфиденциальность и безопастность", sub: nil, accessoryType: .arrow, typePage: .airplane),
        ]),
        TableSection(header: nil, footer: nil, items: [
            TableRow(image: "gamecontroller", title: "Game Center", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "cloud", title: "ICloud", sub: nil, accessoryType: .arrow, typePage: .airplane),
            TableRow(image: "wallet.bifold", title: "Wallet и Apple Pay", sub: nil, accessoryType: .arrow, typePage: .airplane),
        ]),
        TableSection(header: nil, footer: nil, items: [
            TableRow(image: "apps.iphone", title: "Приложения", sub: nil, accessoryType: .arrow, typePage: .airplane)
        ]),
        TableSection(header: nil, footer: nil, items: [
            TableRow(image: "hammer.fill", title: "Разработчик", sub: nil, accessoryType: .arrow, typePage: .airplane)
        ]),
    ]}
    
    
    
}



