public with sharing class PermissionSetService {
    // public PermissionSetService() {

    // }

    public static List<PermissionSet> getAllPermsets(){
        return [
            SELECT Id, Name, Label, LicenseId, ProfileId, IsOwnedByProfile, IsCustom, Description, NamespacePrefix, Type 
            FROM PermissionSet
        ];
    }

    public static List<PermissionSet> getAllNonProfilePermsets(){
        return [
            SELECT Id, Name, Label, LicenseId, ProfileId, IsOwnedByProfile, IsCustom, Description, NamespacePrefix, Type 
            FROM PermissionSet
            WHERE IsOwnedByProfile = FALSE
        ];
    }

}
