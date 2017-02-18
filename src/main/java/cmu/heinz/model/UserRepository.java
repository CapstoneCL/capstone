package cmu.heinz.model;

import cmu.heinz.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


/**
 * @author Mouwu Lin
 * @AndrewID mouwul
 */

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
}
