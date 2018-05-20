package com.communitySystem.model;

public enum UserRole {
    /**
     * 住户
     */
    Resident(0),

    /**
     * 物业管理员
     */
    Property(1),

    /**
     * 系统管理员
     */
    System(2);

    private int value;

    UserRole(int value) {
        this.value = value;
    }

    /**
     * 通过value找enum
     * @param value value
     * @return UserRole
     */
    public UserRole findbyValue(int value)
    {
        for (UserRole role : UserRole.values())
        {
            if (role.value == value)
            {
                return role;
            }
        }
        return null;
    }
}
