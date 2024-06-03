package com.naukari.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.kafka.annotation.KafkaListener;

import com.naukari.model.KafkaConstants;

@Configuration
public class KafkaConfigConsumer {

	/*
	 * @KafkaListener(topics = KafkaConstants.MY_KAFKA_TOPIC,groupId =
	 * KafkaConstants.GROUP_ID) public void updatekafkaMessage(String value) {
	 * 
	 * System.out.println("consumer recieved ::"+value);
	 * 
	 * }
	 */
}
