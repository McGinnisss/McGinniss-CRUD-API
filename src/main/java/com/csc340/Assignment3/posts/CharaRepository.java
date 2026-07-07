package com.csc340.Assignment3.posts;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharaRepository extends JpaRepository<Character, Long>{
    List<Character> findByTitleContainingIgnoreCaseOrContentContainingIgnoreCase(String titleKeyword, String contentKeyword);

    List<Character> findByNameContainingIgnoreCase(String name);

}
