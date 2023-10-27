//
//  PreviewProvider.swift
//  CyrptoApp
//
//  Created by FFK on 28.09.2023.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init(){}
    
    let homeVM = HomeViewModel()
    
    let stat1 = StatisticModel(title: "Market Cap", value: "$12.5Bn", percentageChange: 25.34)
    let stat2 = StatisticModel(title: "Total Volume", value: "$1.23Tr")
    let stat3 = StatisticModel(title: "Portfolio Volume", value: "$50.K",percentageChange: -12.34)
    
    let coin = CoinModel (
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        currentPrice: 26463,
        marketCap: 516873586091,
        marketCapRank: 1,
        fullyDilutedValuation: 556681823784,
        totalVolume: 13556331198,
        high24H: 26763,
        low24H: 26145,
        priceChange24H: -259.32535157352686,
        priceChangePercentage24H: -0.97045,
        marketCapChange24H: -4800060325.143616,
        marketCapChangePercentage24H: -0.92013,
        circulatingSupply: 19498293,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 69045,
        athChangePercentage: -61.60735,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 67.81,
        atlChangePercentage: 38992.32564,
        atlDate: "2013-07-06T00:00:00.000Z",
        lastUpdated: "2023-09-28T12:48:57.923Z",
        sparklineIn7D: CoinModel.SparklineIn7D(price: [
            26755.584980445696,
            26648.834080478802,
            26418.52778477277,
            26576.97810175096,
            26639.52880783224,
            26577.034378575376,
            26660.435061525113,
            26610.05552034763,
            26603.939431757222,
            26584.396598068863,
            26593.195069864574,
            26589.232106802505,
            26561.133454198716,
            26639.641861578562,
            26637.636327006938,
            26578.905206148003,
            26626.378906818343,
            26648.00124709664,
            26637.914728114418,
            26608.789028776486,
            26672.355811811238,
            26662.581883179126,
            26642.19156124197,
            26589.562536733414,
            26642.349940444896,
            26590.721839939364,
            26590.318346408505,
            26688.33796153136,
            26635.9956475043,
            26594.50364952432,
            26584.86501070471,
            26581.657981099415,
            26547.829784907477,
            26534.177936540287,
            26563.985676592565,
            26582.589416632578,
            26581.967576018324,
            26592.91317293783,
            26585.290471612167,
            26545.492871251507,
            26536.561163334205,
            26556.352013285596,
            26540.550300446146,
            26584.65994469058,
            26588.0877783081,
            26568.05854124356,
            26569.61170975327,
            26570.72759500637,
            26568.85782887614,
            26556.154413845245,
            26564.64627526254,
            26568.125190131854,
            26577.180354824755,
            26590.201409894365,
            26601.829342720674,
            26615.098925655053,
            26610.27539472885,
            26587.030719433697,
            26568.478097013893,
            26575.52911690974,
            26573.9234797301,
            26576.201789893425,
            26587.336388850297,
            26586.008804555724,
            26560.723350938522,
            26569.875558372973,
            26562.281185542444,
            26550.45340587291,
            26561.17840053706,
            26579.929451350046,
            26588.80815731327,
            26579.491960979794,
            26597.32744006094,
            26605.1606539787,
            26597.821687761414,
            26589.797665663824,
            26580.92820338404,
            26570.733979097706,
            26657.753582685626,
            26600.275121547336,
            26447.45930249158,
            26505.53480594746,
            26519.93457602045,
            26503.235602590674,
            26257.58376993293,
            26197.46011142378,
            26199.403236385315,
            26166.655202208483,
            26156.621770098798,
            26145.617391107404,
            26117.151507594062,
            26138.4925731258,
            26181.383887893517,
            26128.669159227582,
            26059.043074839537,
            26086.860590577646,
            26077.019560024095,
            26089.099069634845,
            26138.435787005466,
            26110.04755445133,
            26242.580851196097,
            26317.635405795543,
            26357.55015326377,
            26335.400366914426,
            26344.908159924624,
            26310.628891942943,
            26257.316593042888,
            26287.076366997982,
            26296.92231737691,
            26277.764253277604,
            26286.125407384083,
            26331.579435404343,
            26347.306498337617,
            26339.181988547076,
            26315.66494004243,
            26271.546235087877,
            26273.770004029095,
            26274.95856780814,
            26272.560104308588,
            26232.387655871495,
            26242.655160865525,
            26216.589643826963,
            26218.81871171417,
            26180.78081214982,
            26111.574712349553,
            26217.795567371588,
            26180.151205932874,
            26158.96300512369,
            26252.577052683107,
            26175.70955457768,
            26154.819323615397,
            26151.495531909033,
            26204.75759083597,
            26218.080459481796,
            26251.30733492169,
            26219.37883759674,
            26262.327552470317,
            26242.486177466555,
            26230.37306858725,
            26245.07128429413,
            26227.05218111046,
            26243.852966398415,
            26335.634673758457,
            26413.18633693111,
            26805.628892226956,
            26722.206778832646,
            26619.937862451417,
            26166.382102431195,
            26291.838135512997,
            26218.667975753804,
            26207.252695876075,
            26260.32108022661,
            26245.585136939553,
            26240.244240253738,
            26255.8025743061,
            26288.209341200014,
            26350.146895428057,
            26423.81585868406,
            26433.30117414558,
            26364.823472858556,
            26344.99309446877,
            26424.745106695722,
            26400.93546218415,
            26457.099705176435,
            26432.352022735326,
            26401.789255621257,
            26410.42031655413,
            26552.149600179502
        ]),
        priceChangePercentage24HInCurrency: -0.9704488619515705,
        currentHoldings: 1.5)
}