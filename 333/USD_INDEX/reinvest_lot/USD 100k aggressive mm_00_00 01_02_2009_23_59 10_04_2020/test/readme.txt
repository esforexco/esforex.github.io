csv columns: date;balance;equity;margin;balance_drawdown;equity_drawdown;AUD/USD_AUTO_60_1440_sum_lot;AUD/USD_AUTO_60_1440_one_trade_lot;USD/CHF_AUTO_60_1440_sum_lot;USD/CHF_AUTO_60_1440_one_trade_lot;USD/JPY_AUTO_60_1440_sum_lot;USD/JPY_AUTO_60_1440_one_trade_lot;EUR/USD_AUTO_60_1440_sum_lot;EUR/USD_AUTO_60_1440_one_trade_lot;GBP/USD_AUTO_60_1440_sum_lot;GBP/USD_AUTO_60_1440_one_trade_lot;USD/CAD_AUTO_60_1440_sum_lot;USD/CAD_AUTO_60_1440_one_trade_lot
..._sum_lot - current opened lot of a some machine
..._one_trade_lot - lot for next trade of a some machine
balance_drawdown - drawdown percent from last peak of balance - (balance-balancePeak)/balancePeak*100
equity_drawdown - drawdown percent from last peak of equity - (equity-equityPeak)/equityPeak*100
positive drawdowns means floating profit from balancePeak/equityPeak