package com.security.springshield.service;

import com.security.springshield.entity.Role;

import java.util.List;
import java.util.Optional;

public interface RoleService {
    List<Role> getAllRoles();
    Optional<Role> getRoleById(Long id);
    Role createRole(Role role);
    Role updateRole(Role role);
    void deleteRole(Long id);
}
