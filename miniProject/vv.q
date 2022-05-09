//This file was generated from (Academic) UPPAAL 4.1.24 (rev. 29A3ECA4E5FB0808), November 2019

/*
Ensure hourly water level checks.
*/
A[] ((TankController_One.time > hour) imply not TankController_One.Idle)

/*
Ensure hourly moisture level checks.
*/
A[] ((GardenController_One.time > hour) imply not GardenController_One.Idle)

/*
Initially the water pump is closed
*/
A[] (TankController_One.Idle imply not TankController_One.Starting_Pumping_High or TankController_One.Starting_Pumping_Low)

/*
Tank is initially empty.
*/
A[] (TankController_One.Idle and Tank_One.Idle and GardenController_One.Idle and Garden_One.Idle and MasterController_One.Idle and (TankController_One.time == 0 and Tank_One.time == 0 and Garden_One.time == 0) imply (water_level == 0))

/*
Initially the Master Controller is idle


*/
A[] (TankController_One.Idle and Tank_One.Idle and GardenController_One.Idle and Garden_One.Idle and (TankController_One.time == 0 and Tank_One.time == 0 and Garden_One.time == 0) and (water_level == 0) imply MasterController_One.Idle)

/*
The water pump draws from the water tank.


*/
A[] (TankController_One.Pumping imply (water_level < MasterController_One.ui_water_level))

/*

*/
//NO_QUERY

/*

*/
A[] (1 > 0)

/*

*/
A[] (MasterController_One.Sending_Request imply GardenController_One.UpdatedMoistureLevel)

/*

*/
//NO_QUERY

/*
if water level is higher than 10, throw an error.
*/
A[] (Tank_One.Measuring_Water_Level > 10 imply Tank_One.Error_Tank_Water_Limit)

/*
Starting the pump will be executed within 300ms
*/
A[] (TankController_One.Starting_Pumping_Low and (TankController_One.time > 300) imply TankController_One.Error_Pump_Start)

/*
Starting the pump will be executed within 300ms
*/
A[] (TankController_One.Starting_Pumping_High and (TankController_One.time > 300) imply TankController_One.Error_Pump_Start)

/*
If pumping duration exceeds time it takes to pump 'High' or 'Low' (i.e., 2500ms or 5000ms) an error will be thrown.
*/
E<> (TankController_One.Pumping and (TankController_One.time > TankController_One.pump_duration) imply TankController_One.Error_Pump_Stop)

/*
If moisture sensor is showing more than 100 or less than 0, throw an error.
*/
E<> (Garden_One.Measuring_Moisture_Level and (moisture_level > 100) or (moisture_level < 0) imply Garden_One.Error_Moisture_Sensor)

/*
if moisture value is more than 100 or less than 0, throw an error.
*/
E<> (GardenController_One.Measuring_Garden_Level and (moisture_level > 100) or (moisture_level < 0) imply GardenController_One.Error_Moisture_Sensor)

/*

*/
//NO_QUERY

/*
It is able to water the three modes of water (low, medium, and high)
*/
E<> TankController_One.Pumping imply Garden_One.Moisture_Low or Garden_One.Moisture_Medium or Garden_One.Moisture_High

/*
Implies that if the moisture sensor sends a request to the master controller, the message will be sent.
*/
E<> Garden_One.Moisture_Low imply MasterController_One.Sending_Request imply MasterController_One.Sent_Request

/*

*/
//NO_QUERY

/*

*/
E<> Garden_One.Moisture_Medium

/*

*/
E<> Garden_One.Moisture_Low

/*

*/
E<> Garden_One.Moisture_High

/*

*/
//NO_QUERY

/*

*/
E<> TankController_One.Sent_Measure_Request

/*

*/
E<> TankController_One.Sending_Measure_Request

/*

*/
E<> Tank_One.Measuring_Water_Level

/*

*/
E<> GardenController_One.Measuring_Garden_Level

/*

*/
E<> Garden_One.Measuring_Moisture_Level
