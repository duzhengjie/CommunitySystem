package com.communitySystem.model.topic;

public class TopicType {
    private String typeId;
    private String typeName;
    private String typeInfo;
    private String typePic;

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getTypeInfo() {
        return typeInfo;
    }

    public void setTypeInfo(String typeInfo) {
        this.typeInfo = typeInfo;
    }

    public String getTypePic() {
        return typePic;
    }

    public void setTypePic(String typePic) {
        this.typePic = typePic;
    }

    @Override
    public String toString() {
        return "TopicType{" +
                "typeId='" + typeId + '\'' +
                ", typeName='" + typeName + '\'' +
                ", typeInfo='" + typeInfo + '\'' +
                ", typePic='" + typePic + '\'' +
                '}';
    }
}
