#include <esp_now.h>
#include <WiFi.h>

#include <Wire.h>

#include <Arduino.h>

#define RELAY_PIN 0 // ESP32 pin 0, which connects to the IN pin of relay

// REPLACE WITH THE MAC Address of your receiver 
uint8_t broadcastAddress[] = {0x84, 0x0D, 0x8E, 0xE4, 0xAB, 0x00};

// Define variables to store sensor readings to be sent
float moisture;

// Define variables to store incoming readings
float incomingMoist;

// Variable to store if sending data was successful
String success;

//Structure example to send data
//Must match the receiver structure
typedef struct struct_message {
    float moist;
} struct_message;

// Create a struct_message called sensorReadings to hold sensor readings
struct_message sensorReadings;

// Create a struct_message to hold incoming sensor readings
struct_message incomingReadings;

esp_now_peer_info_t peerInfo;

// Callback when data is sent
void OnDataSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
  //Serial.print("\r\nLast Packet Send Status:\t");
 // Serial.println(status == ESP_NOW_SEND_SUCCESS ? "Delivery Success" : "Delivery Fail");
  if (status ==0){
    success = "Delivery Success :)";
  }
  else{
    success = "Delivery Fail :(";
  }
}

// Callback when data is received
void OnDataRecv(const uint8_t * mac, const uint8_t *incomingData, int len) {
  memcpy(&incomingReadings, incomingData, sizeof(incomingReadings));
  //Serial.print("Bytes received: ");
  //Serial.println(len);
  incomingMoist = incomingReadings.moist;
}
 
void setup() {
  
  pinMode(RELAY_PIN, OUTPUT);
  digitalWrite(RELAY_PIN, HIGH);

  u8g2.begin();
  
  // Init Serial Monitor
  Serial.begin(115200);

  // Set device as a Wi-Fi Station
  WiFi.mode(WIFI_STA);

  // Init ESP-NOW
  if (esp_now_init() != ESP_OK) {
    Serial.println("Error initializing ESP-NOW");
    return;
  }

  // Once ESPNow is successfully Init, we will register for Send CB to
  // get the status of Trasnmitted packet
  esp_now_register_send_cb(OnDataSent);
  
  // Register peer
  memcpy(peerInfo.peer_addr, broadcastAddress, 6);
  peerInfo.channel = 0;  
  peerInfo.encrypt = false;
  
  // Add peer        
  if (esp_now_add_peer(&peerInfo) != ESP_OK){
    Serial.println("Failed to add peer");
    return;
  }
  // Register for a callback function that will be called when data is received
  esp_now_register_recv_cb(OnDataRecv);
}
 
void loop() {
  getReadings();

  // Set values to send
  sensorReadings.moist = 11;

  // Send message via ESP-NOW
  esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &sensorReadings, sizeof(sensorReadings));
   
  if (result == ESP_OK) {
    Serial.println("Sent with success");
  }
  else {
    Serial.println("Error sending the data");
  }
  updateDisplay();

  delay(10000);
}
void getReadings(){
  moisture = 11;

}

void updateDisplay(){
  // Display Readings in Serial Monitor
  Serial.println("INCOMING READINGS");
  Serial.print("Moisture: ");
  Serial.print(incomingReadings.moist);
  Serial.println("%");

  if(incomingReadings.moist<20){ // Water if moisture is below 20%
    Serial.println("Water time!");
   digitalWrite(RELAY_PIN, LOW);
  } else {
     digitalWrite(RELAY_PIN, HIGH);
    }

}
