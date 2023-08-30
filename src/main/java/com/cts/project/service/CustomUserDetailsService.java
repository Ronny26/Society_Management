package com.cts.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.cts.project.model.CustomUserDetails;
import com.cts.project.model.Users;
import com.cts.project.service.UserService;




 
public class CustomUserDetailsService implements UserDetailsService {
 
    @Autowired
    private UserService userRepo;

     
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Users user = userRepo.getUserByEmail(email);
        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return new CustomUserDetails(user);
    }


 
}
