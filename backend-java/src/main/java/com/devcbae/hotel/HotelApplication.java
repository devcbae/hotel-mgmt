package com.devcbae.hotel;

import com.devcbae.hotel.jdbc.persistence.Item;
import com.devcbae.hotel.jdbc.repository.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


//confirmed
@SpringBootApplication
@ComponentScan(basePackages = {"com.devcbae.hotel"})
public class HotelApplication {  // implements CommandLineRunner

	public static void main(String[] args) {
		SpringApplication.run(HotelApplication.class, args);
	}


//	//1) Testing for the JDBCTemplate Wiring
//	@Autowired
//	private JdbcTemplate jdbcTemplate;

//	// Testing for the wiring
//	@Override
//	public void run(String... args) throws Exception {
//		String sql = "INSERT INTO \"mgmt_org_hichy\" " +
//				"(\"dept_hichy_id\", \"dept_hichy_name\") VALUES (5, 'TIMELINE33')";
//		int result = jdbcTemplate.update(sql);
//		if (result > 0) {
//			System.out.println("info has been inserted.");
//		}
//	}

//	//2) Testing for the JPA Wiring
//	@RestController
//	@RequestMapping("/items")
//	public class hotelController {
//
//		@Autowired
//		private ItemRepository itemRepository;
//
//		@GetMapping
//		public Iterable<Item> getItems() {
//			return itemRepository.findAll();
//		}
//
//	}

}
