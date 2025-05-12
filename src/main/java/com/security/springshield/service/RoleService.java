package com.security.springshield.service;

import com.security.springshield.entity.Role;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface RoleService {
    List<Role> getAllRoles();
    Optional<Role> getRoleById(UUID id);
    Role createRole(Role role);
    Role updateRole(Role role);
    void deleteRole(UUID id);
}
