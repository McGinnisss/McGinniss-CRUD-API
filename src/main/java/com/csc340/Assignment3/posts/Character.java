package com.csc340.Assignment3.posts;

import jakarta.persistence.Id;
import jakarta.persistence.Lob;

import java.util.Base64;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "characters")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Character {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String race;

    @Column(nullable = false)
    private String chClass;
    
    @Column(nullable = false, columnDefinition = "TEXT")
    private String description;

    @Lob
    @Column(name = "image_data")
    private byte[] imageData;

    public Character(String name, String race, String chClass, String description, byte[] imageData) {
        this.name = name;
        this.race = race;
        this.chClass = chClass;
        this.description = description;
        this.imageData = imageData;
    }
    
    public String getBase64Image() {
        if (this.imageData != null && this.imageData.length > 0) {
            return Base64.getEncoder().encodeToString(this.imageData);
        }
        return null;
    }
}
