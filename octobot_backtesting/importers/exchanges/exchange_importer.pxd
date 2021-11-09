# cython: language_level=3
#  Drakkar-Software OctoBot-Backtesting
#  Copyright (c) Drakkar-Software, All rights reserved.
#
#  This library is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License as published by the Free Software Foundation; either
#  version 3.0 of the License, or (at your option) any later version.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  Lesser General License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with this library.
cimport octobot_backtesting.importers as importers

cdef class ExchangeDataImporter(importers.DataImporter):
    cdef public str exchange_name

    cdef public list available_data_types
    cdef public list symbols
    cdef public list time_frames

    cdef tuple __get_operations_from_timestamps(self, double superior_timestamp, double inferior_timestamp)
    @staticmethod
    cdef list import_ohlcvs(list ohlcvs)
    @staticmethod
    cdef list import_tickers(list tickers)
    @staticmethod
    cdef list import_klines(list klines)
    @staticmethod
    cdef list import_order_books(list order_books)
    @staticmethod
    cdef list import_recent_trades(list recent_trades)
