package com.cucumber.client.service;

import java.util.List;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.cucumber.client.model.TeacherDTO;

@Service
public class TeacherService {
    
    @Autowired
    private RestTemplate restTemplate;

    public List<TeacherDTO> getTeachers(){
        UriComponentsBuilder urlBuilder = 
                UriComponentsBuilder.fromUriString("http://localhost:8080/teacher");

        HttpHeaders headers = new HttpHeaders();
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);

        ResponseEntity<List<TeacherDTO>> response = this.restTemplate.exchange(
                urlBuilder.encode().toUriString(),
                HttpMethod.GET,
                requestEntity,
                new ParameterizedTypeReference<List<TeacherDTO>>() {}
        );

        return response.getBody();
    }

    public TeacherDTO createTeacher(TeacherDTO teacherDTO) {

    UriComponentsBuilder urlBuilder =
            UriComponentsBuilder.fromUriString("http://localhost:8080/teacher");

    HttpHeaders headers = new HttpHeaders();
    headers.setContentType(MediaType.APPLICATION_JSON);
    headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));

    HttpEntity<TeacherDTO> requestEntity = new HttpEntity<>(teacherDTO, headers);

    ResponseEntity<TeacherDTO> response = this.restTemplate.exchange(
            urlBuilder.encode().toUriString(),
            HttpMethod.POST,
            requestEntity,
            TeacherDTO.class
    );

    return response.getBody();
}

}
