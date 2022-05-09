#include <Adafruit_MPU6050.h>
#include <Adafruit_SSD1306.h>
#include <Adafruit_Sensor.h>

#include <WiFi.h>
#include <esp_now.h>

Adafruit_MPU6050 mpu;

uint8_t broadcastAddress[] = {0x10, 0x97, 0xBD, 0xD4, 0x74, 0x50};
esp_now_peer_info_t peerInfo;
String success;

float outgoing_x;
float outgoing_y;

typedef struct struct_message {
    float x;
    float y;
} struct_message;

struct_message message;

void OnDataSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
  Serial.print("\r\nLast Packet Send Status:\t");
  Serial.println(status == ESP_NOW_SEND_SUCCESS ? "Delivery Success" : "Delivery Fail");
  if (status == 0) {
    success = "Delivery Success :)";
  }
  else {
    success = "Delivery Fail :(";
  }
}

void setup() {
  Serial.begin(115200);

  if (!mpu.begin()) {
    Serial.println("Sensor init failed");
    while (1)
      yield();
  }
  Serial.println("Found a MPU-6050 sensor");
  
  WiFi.mode(WIFI_STA);
  
  
  // Init ESP_NOW
  if (esp_now_init() != ESP_OK) {
    Serial.println("Error initializing ESP-NOW");
    return;
  } 
  
  /* Once ESP-NOW is successfully init, we will register for send cb to 
     get the status of transmittet packets.
  */
  esp_now_register_send_cb(OnDataSent);

  memcpy(peerInfo.peer_addr, broadcastAddress, 6);
  peerInfo.channel = 0;  
  peerInfo.encrypt = false;

  // Add peer
  if (esp_now_add_peer(&peerInfo) != ESP_OK) {
    Serial.println("Failed to add peer");
    return;
    }
  }

void loop() {

  sensors_event_t a, g, temp;
  mpu.getEvent(&a, &g, &temp);

  message.x = a.acceleration.x;
  message.y = a.acceleration.y;

  Serial.println(a.acceleration.x);
  esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &message, sizeof(message));

  if (result == ESP_OK) {
    Serial.println("Sent with success");
  }
  else {
    Serial.println("Error sending the data");
  }
  delay(100);
}
