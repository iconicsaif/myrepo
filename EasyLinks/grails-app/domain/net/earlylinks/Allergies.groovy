package net.earlylinks

class Allergies {

    Integer id;
    String name;
    String precautions;
    String reactionSymptoms;
    Date created = new Date();
    Date updated;

    static constraints = {
        name (nullable: true);
        precautions (nullable: true);
        reactionSymptoms (nullable: true);
    }

    @Override
    public String toString() {
        return "Allergies{" +
                "created=" + created +
                ", id=" + id +
                ", name='" + name + '\'' +
                ", precautions='" + precautions + '\'' +
                ", reactionSymptoms='" + reactionSymptoms + '\'' +
                ", updated=" + updated +
                ", version=" + version +
                '}';
    }
}
