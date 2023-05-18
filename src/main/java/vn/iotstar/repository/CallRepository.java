package vn.iotstar.repository;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Call;

@Repository
public interface CallRepository extends JpaRepository<Call, Integer>{
	
	Optional<Call> findByCreateAt(Date createAt);

}
