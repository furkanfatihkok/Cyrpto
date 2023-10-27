//
//  MarketDataModel.swift
//  CyrptoApp
//
//  Created by FFK on 4.10.2023.
//

import Foundation

//JSON Data
/*
 URL: https://api.coingecko.com/api/v3/global
 
 
 JSON Response:
 {
 "data": {
 "active_cryptocurrencies": 10274,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 878,
 "total_market_cap": {
 "btc": 40842801.92164441,
 "eth": 684925629.9417558,
 "ltc": 17502737127.548435,
 "bch": 4905637111.136108,
 "bnb": 5287739588.684819,
 "eos": 1946327800255.1748,
 "xrp": 2118085924654.2637,
 "xlm": 9999944925992.69,
 "link": 148667796964.4193,
 "dot": 279792379718.59467,
 "yfi": 215834071.9717501,
 "usd": 1124489453136.0903,
 "aed": 4130238516474.311,
 "ars": 393595710018764.4,
 "aud": 1775630693421.8079,
 "bdt": 123851736156021.23,
 "bhd": 423912283022.14844,
 "bmd": 1124489453136.0903,
 "brl": 5787297419510.192,
 "cad": 1544306345569.9177,
 "chf": 1029486961687.8856,
 "clp": 1023701463451503.4,
 "cny": 8093175492111.0625,
 "czk": 26072749807249.324,
 "dkk": 7977226011129.83,
 "eur": 1069567139266.0146,
 "gbp": 924740769128.259,
 "hkd": 8802897010457.916,
 "huf": 414597323875946.7,
 "idr": 17553487666458512,
 "ils": 4330020935165.744,
 "inr": 93600587073509.3,
 "jpy": 167501137715519,
 "krw": 1520556030817977.5,
 "kwd": 347743865424.5233,
 "lkr": 364549693150520.25,
 "mmk": 2359065055230539,
 "mxn": 20182066827417.766,
 "myr": 5319959602786.844,
 "ngn": 861617553676466.5,
 "nok": 12314535886930.812,
 "nzd": 1902026681422.6626,
 "php": 63713009045474.805,
 "pkr": 319770752055752.56,
 "pln": 4913302610423.051,
 "rub": 112055369507053.69,
 "sar": 4217603475556.835,
 "sek": 12409753155864.592,
 "sgd": 1541770621853.0964,
 "thb": 41576310795527.375,
 "try": 31000150141946.355,
 "twd": 36318195863683.96,
 "uah": 41171942139200.42,
 "vef": 112595128942.51663,
 "vnd": 27476844782978772,
 "zar": 21652865297436.207,
 "xdr": 854342106914.6759,
 "xag": 53042583565.52695,
 "xau": 616253955.0021727,
 "bits": 40842801921644.414,
 "sats": 4084280192164441
 },
 "total_volume": {
 "btc": 1349131.4593811573,
 "eth": 22624665.086975385,
 "ltc": 578155566.5391396,
 "bch": 162044449.53699577,
 "bnb": 174666171.08679128,
 "eos": 64291673001.034386,
 "xrp": 69965237940.96355,
 "xlm": 330321125314.0326,
 "link": 4910838445.079754,
 "dot": 9242184272.70615,
 "yfi": 7129494.618465714,
 "usd": 37144466725.83065,
 "aed": 136431254839.30815,
 "ars": 13001369388968.67,
 "aud": 58653155905.75648,
 "bdt": 4091107017281.1377,
 "bhd": 14002795355.237053,
 "bmd": 37144466725.83065,
 "brl": 191167712451.1597,
 "cad": 51011981933.25225,
 "chf": 34006316454.49878,
 "clp": 33815208173194.477,
 "cny": 267336155919.14813,
 "czk": 861242748845.1271,
 "dkk": 263506078521.64722,
 "eur": 35330256682.00754,
 "gbp": 30546309378.98766,
 "hkd": 290779886093.1565,
 "huf": 13695100881897.525,
 "idr": 579831973284090.4,
 "ils": 143030526520.15317,
 "inr": 3091842153231.3037,
 "jpy": 5532946902312.913,
 "krw": 50227454543003.19,
 "kwd": 11486777757.096224,
 "lkr": 12041912807075.912,
 "mmk": 77925331539304.11,
 "mxn": 666659974123.1932,
 "myr": 175730472079.90485,
 "ngn": 28461204739333.223,
 "nok": 406777375475.11755,
 "nzd": 62828305399.139984,
 "php": 2104586875307.7334,
 "pkr": 10562761639518.246,
 "pln": 162297658566.57507,
 "rub": 3701445960651.1606,
 "sar": 139317119892.63882,
 "sek": 409922620339.5949,
 "sgd": 50928221160.78552,
 "thb": 1373360940487.5042,
 "try": 1024006087591.0442,
 "twd": 1199673339788.5815,
 "uah": 1360003715963.952,
 "vef": 3719275453.25742,
 "vnd": 907623227524082.2,
 "zar": 715243822266.579,
 "xdr": 28220880039.617096,
 "xag": 1752118238.9101171,
 "xau": 20356282.09975701,
 "bits": 1349131459381.1572,
 "sats": 134913145938115.73
 },
 "market_cap_percentage": {
 "btc": 47.753379010131184,
 "eth": 17.54901595266027,
 "usdt": 7.38914777353177,
 "bnb": 2.9079424833910807,
 "xrp": 2.5272092887501656,
 "usdc": 2.2444326353194186,
 "steth": 1.2875496307209306,
 "sol": 0.8651877312276391,
 "ada": 0.7978073812798503,
 "doge": 0.7654464454945487
 },
 "market_cap_change_percentage_24h_usd": -0.12955408792683742,
 "updated_at": 1696426228
 }
 }
 */


struct GlobalData: Codable {
    let data: MarketDataModel
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String,CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        //        if let item = totalMarketCap.first(where: { (key,value) -> Bool in
        //                return key == "usd"
        //        }){
        //            return "\(item.value)"
        //        }
        //        return ""
        //    }
        
        if let item = totalMarketCap.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}) {
            return  item.value.formattedWithAbbreviations()
        }
        return ""
    }
}
