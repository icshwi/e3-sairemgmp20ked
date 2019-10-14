
require stream,2.8.8
require modbus,2.11.0p
require sairemgmp20ked, 2.0.0


drvAsynIPPortConfigure("conn-ISrc-ISS-Magtr", "10.10.1.38:502", 0, 0, 1)

modbusInterposeConfig("conn-ISrc-ISS-Magtr", 0, 1000, 0)

drvModbusAsynConfigure("sgmp20ked-modbus-write-word", "conn-ISrc-ISS-Magtr", 1, 6, 0, 9, 0, 1000, "Function6")

drvModbusAsynConfigure("sgmp20ked-modbus-read-word", "conn-ISrc-ISS-Magtr", 1, 3, 100, 109, 0, 1000, "Function3")

dbLoadRecords("sairemgmp20ked.db")


