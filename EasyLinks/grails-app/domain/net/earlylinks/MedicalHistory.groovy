package net.earlylinks

class MedicalHistory {

    Integer id;
    String condition;
    String diagnosis;
    String precaution;
    Date created = new Date();
    Date updated;

    static constraints = {

        condition(nullable: true);
        diagnosis(nullable: true);
        precaution(nullable: true);
        created(nullable: true);
        updated(nullable: true);
    }

    @Override
    public String toString() {
        return "MedicalHistory{" +
                "condition='" + condition + '\'' +
                ", id=" + id +
                ", diagnosis='" + diagnosis + '\'' +
                ", precaution='" + precaution + '\'' +
                ", created=" + created +
                ", updated=" + updated +
                ", version=" + version +
                '}';
    }
}
