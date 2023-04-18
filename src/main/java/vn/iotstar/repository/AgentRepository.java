package vn.iotstar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Agent;

@Repository
public interface AgentRepository extends JpaRepository<Agent, Integer> {

}
