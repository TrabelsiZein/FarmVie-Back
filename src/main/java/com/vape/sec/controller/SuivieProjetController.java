package com.vape.sec.controller;

import com.vape.sec.Dto.ResponseModel;
import com.vape.sec.Dto.SuivieProjetDto;
import com.vape.sec.model.Articles;
import com.vape.sec.model.Projet;
import com.vape.sec.model.Suivie;
import com.vape.sec.model.SuivieProjet;
import com.vape.sec.repo.*;
import com.vape.sec.security.UserPrincipal;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collection;
import java.util.List;

@RestController
@RequestMapping("/suivieProjet")
public class SuivieProjetController {

    @Autowired
    SuivieProjetRep prjetrepo;
    @Autowired
    InvesteRep investRepo;

    @PostMapping("/add")
    public ResponseModel addprojet(@RequestParam("gevernorat") String gevernorat, @RequestParam("delegation") String delegation, @RequestParam("superficieE") String superficieE, @RequestParam("superficieT") String superficieT,
                          @RequestParam("irrigation") String irrigation, @RequestParam("siege") String siege, @RequestParam("nomProjet") String nomProjet, @RequestParam("biologique") String biologique, @RequestParam("type") String type,
                          @RequestParam("description") String description, @RequestParam("montantMin") String montantMin, @RequestParam("typeFinance") String typeFinance, @RequestParam("photoProjet") MultipartFile photoProjet, @RequestParam("montanttotal") String montantTotal) throws IOException

    {
        ResponseModel res=new ResponseModel();
try{
    long id = -1;
    Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    if (principal instanceof UserPrincipal) {
        id = ((UserPrincipal) principal).getId();

    }
    SuivieProjet p = new SuivieProjet();
    //sol copier
    byte[] bytes = photoProjet.getBytes();
    Path path = FileSystems.getDefault().getPath("sol/" + photoProjet.getOriginalFilename());

    Files.write(path, bytes);


    p.setPhotoProjet("photos_profil/" + photoProjet.getOriginalFilename());
    p.setIdUser(id);
    p.setDescription(description);
    p.setGevernorat(gevernorat);
    p.setSuperficieE(superficieE);
    p.setSuperficieT(superficieT);
    float montantTotal2 = Float.parseFloat(montantTotal);
    p.setMontantTotal(montantTotal2);
    p.setMontantRecu(0);
    p.setIrrigation(irrigation);
    p.setSiege(siege);
    p.setNomProjet(nomProjet);
    p.setType(type);
    p.setMontantMin(montantMin);
    p.setDelegation(delegation);
    p.setBiologique(biologique);
    p.setIp("");
    p.setPourcentage(0);
    p.setEtat("en attend");
    p.setTypeFinance(typeFinance);

    p.setDatadeployment(LocalDate.now());
    prjetrepo.save(p);
    res.setCode(200);
    res.setMsg("added succesfuly");
    return res;
}catch (Exception e){
    res.setCode(402);
    res.setMsg("add failed");
    return res;
}



    }

    @GetMapping("/getAll")
    public List<SuivieProjet> getAll(){
        return prjetrepo.findAll();
    }

}