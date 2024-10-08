package com.zex.spring_security.services;

import com.zex.spring_security.domain.disease.Disease;
import com.zex.spring_security.domain.disease.DiseaseRequest;
import com.zex.spring_security.domain.disease.DiseaseResponse;
import com.zex.spring_security.domain.disease.DiseaseUpdateDTO;
import com.zex.spring_security.repositories.DiseaseRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class DiseaseService {
    @Autowired
    private DiseaseRepository repository;

    @Transactional
    public Disease save(DiseaseRequest data) {
        Disease newDisease = new Disease(data);

        return this.repository.save(newDisease);
    }


    public Page<DiseaseResponse> getAll(Pageable pageable) {
        Page<Disease> diseases = this.repository.findAll(pageable);

        return diseases.map(d -> new DiseaseResponse(d));
    }

    @Transactional
    public DiseaseUpdateDTO update(DiseaseUpdateDTO data) {
        Disease reference = this.repository.getReferenceById(data.id());

        reference.update(data);

        return new DiseaseUpdateDTO(this.repository.save(reference));

    }

    @Transactional
    public void delete (String uuid) {
        Disease reference = repository.getReferenceById(uuid);

        this.repository.delete(reference);
    }

    public DiseaseResponse details(String id) {
        return new DiseaseResponse(this.repository.getReferenceById(id));
    }

    public List<DiseaseResponse> findByCid(String cid) {
        List<Disease> diseases = this.repository.findByCidContainingIgnoreCase(cid);

        return diseases.stream()
                .map(d -> new DiseaseResponse(d))
                .collect(Collectors.toList());
    }

    public List<DiseaseResponse> findByName(String name) {
        List<Disease> diseases = this.repository.findByNameContainingIgnoreCase(name);

        return diseases.stream()
                .map(d -> new DiseaseResponse(d))
                .collect(Collectors.toList());
    }

    public List<DiseaseResponse> findBySymptoms(String symptoms) {
        List<Disease> diseaseList = repository.findBySymptomsContainingIgnoreCase(symptoms);

        return diseaseList.stream()
                .map(d -> new DiseaseResponse(d))
                .collect(Collectors.toList());
    }

}
