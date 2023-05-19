package vn.iotstar.repository;

import java.util.Date;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.CallDetail;

@Repository
public interface CallDetailRepository extends JpaRepository<CallDetail, Integer>{
	Optional<CallDetail> findByCallId(Integer callId);
	Optional<CallDetail> findByCreateAt(Date date);
}
