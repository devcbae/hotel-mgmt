package com.devcbae.hotel.jdbc.repository;

import com.devcbae.hotel.jdbc.persistence.Item;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ItemRepository extends CrudRepository<Item, Integer> {


}
