*** Settings ***
Library   ThreadLoggingLib.py

*** TestCase ***

Log messages from non-main threads should be ignored
    Log using robot api in thread
    Log using logging module in thread
    Log using robot api
    Log using logging module
