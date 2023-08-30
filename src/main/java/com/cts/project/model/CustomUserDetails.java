package com.cts.project.model;

import java.util.Collection;
 
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

 
public class CustomUserDetails implements UserDetails {
 
   private Users user;
     
    public CustomUserDetails(Users user) {
        this.user = user;
    }
 
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }
 
    @Override
    public String getPassword() {
        return user.getPassword();
    }
 
    @Override
    public String getUsername() {
        return user.getEmail();
    }
 
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }
 
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }
 
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }
 
    @Override
    public boolean isEnabled() {
        return true;
    }
     
    public String getFullName() {
        return user.getFirstName() + " " + user.getLastName();
    }
    public String getEmailAdd() {
    	return user.getEmail();
    }
    public long getPhoneNo() {
    	return user.getPhoneNo();
    }
    public String getAddress() {
    	return user.getAddress();
    }
    public String getStatus()
    {
    	return user.getStatus();
    }
    public long getId()
    {
    	return user.getId();
    }
 
}