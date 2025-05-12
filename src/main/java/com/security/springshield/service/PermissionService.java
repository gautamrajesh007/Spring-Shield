package com.security.springshield.service;

import com.security.springshield.entity.Permission;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface PermissionService {
    List<Permission> getAllPermissions();
    Optional<Permission> getPermissionById(UUID id);
    Permission createPermission(Permission permission);
    Permission updatePermission(Permission permission);
    void deletePermission(UUID id);
}
