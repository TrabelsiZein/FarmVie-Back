package com.vape.sec.controller;

import com.vape.sec.model.Actualite;
import com.vape.sec.model.User;
import com.vape.sec.repo.ActualiteRep;
import com.vape.sec.repo.UserRepo;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/actualite")
public class ActualiteController {

    @Autowired
    private ActualiteRep actualiteRep;
    @Autowired
    private UserRepo userRepo;

    @PostMapping("/add")
    public ResponseEntity<?> add(@RequestParam("subject") String subject, @RequestParam("description") String description,
                                 @RequestParam("photo") MultipartFile photo, @RequestParam("projectId") Long projectId,
                                 @RequestParam("projectName") String projectName,@RequestParam("ingId") Long ingId) {
        try {
            Actualite actualite = new Actualite();
            actualite.setSubject(subject);
            actualite.setDescription(description);
            actualite.setProjectId(projectId);
            actualite.setProjectName(projectName);
            Optional<User> user = userRepo.findById(ingId);
            actualite.setIngName(user.get().getName());
            actualite.setIngId(ingId);
            byte[] bytes = photo.getBytes();
            Path path = FileSystems.getDefault().getPath("actualite/" + photo.getOriginalFilename());
            System.out.println(path.toAbsolutePath());
            Files.write(path, bytes);
            actualite.setPhoto("actualite/" + photo.getOriginalFilename());
            actualiteRep.save(actualite);
            System.out.println(photo.getOriginalFilename());
            return ResponseEntity.ok("success");
        } catch (Exception e) {
            return ResponseEntity.status(400).body(e.getStackTrace().toString());
        }
    }

    @GetMapping("/getall/{idProjet}/{idIng}")
    public ResponseEntity<?> getArticles(@PathVariable("idProjet") Long idProjet,@PathVariable("idIng") Long idIng) {
        try {
            List<Actualite> actualites = actualiteRep.findByProjectIdAndIngId(idProjet,idIng);
            for (Actualite l : actualites) {
                try {
                    File f = new File(l.getPhoto());
                    String encodeBase64 = null;
                    String extense = FilenameUtils.getExtension(f.getName());
                    FileInputStream fileInputStream = new FileInputStream(f);
                    byte[] bytes = new byte[(int) f.length()];
                    fileInputStream.read(bytes);
                    encodeBase64 = Base64.getEncoder().encodeToString(bytes);
                    l.setPhoto("data:image/" + extense + ";base64," + encodeBase64);
                    fileInputStream.close();
                } catch (Exception e) {
                    return ResponseEntity.status(400).body(e.getMessage());
                }
            }
            return ResponseEntity.ok(actualiteRep.findByProjectIdAndIngId(idProjet,idIng));
        } catch (Exception e) {
            return ResponseEntity.status(400).body(e.getMessage());
        }

    }

}
