package com.devcbae.hotel;

import com.devcbae.hotel.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@ComponentScan(basePackages = {"com.devcbae.hotel"})
public class HotelApplication {

	public static void main(String[] args) {
		SpringApplication.run(HotelApplication.class, args);
	}


	//2) Testing for the JPA Wiring
	@RestController
	@RequestMapping("/items")
	public class hotelController {

		@Autowired
		private ItemRepository itemRepository;

		@GetMapping
		public Iterable<Item> getItems() {
			return itemRepository.findAll();
		}

	}

}
