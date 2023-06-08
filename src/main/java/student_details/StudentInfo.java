package student_details;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class StudentInfo {
	@Id
	String universal_seat_number;
	String student_name;
	String date_of_birth;
	String student_father_name;
	String student_mother_name;

	int kannada_external_marks;
	int kannada_internal_marks;
	int english_external_marks;
	int english_internal_marks;
	int hindi_external_marks;
	int hindi_internal_marks;
	int maths_external_marks;
	int maths_internal_marks;
	int science_external_marks;
	int science_internal_marks;
	int social_external_marks;
	int social_internal_marks;

	public String getUniversal_seat_number() {
		return universal_seat_number;
	}

	public void setUniversal_seat_number(String universal_seat_number) {
		this.universal_seat_number = universal_seat_number;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getDate_of_birth() {
		return date_of_birth;
	}

	public void setDate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
	}

	public String getStudent_father_name() {
		return student_father_name;
	}

	public void setStudent_father_name(String student_father_name) {
		this.student_father_name = student_father_name;
	}

	public String getStudent_mother_name() {
		return student_mother_name;
	}

	public void setStudent_mother_name(String student_mother_name) {
		this.student_mother_name = student_mother_name;
	}

	public int getKannada_external_marks() {
		return kannada_external_marks;
	}

	public void setKannada_external_marks(int kannada_external_marks) {
		this.kannada_external_marks = kannada_external_marks;
	}

	public int getKannada_internal_marks() {
		return kannada_internal_marks;
	}

	public void setKannada_internal_marks(int kannada_internal_marks) {
		this.kannada_internal_marks = kannada_internal_marks;
	}

	public int getEnglish_external_marks() {
		return english_external_marks;
	}

	public void setEnglish_external_marks(int english_external_marks) {
		this.english_external_marks = english_external_marks;
	}

	public int getEnglish_internal_marks() {
		return english_internal_marks;
	}

	public void setEnglish_internal_marks(int english_internal_marks) {
		this.english_internal_marks = english_internal_marks;
	}

	public int getHindi_external_marks() {
		return hindi_external_marks;
	}

	public void setHindi_external_marks(int hindi_external_marks) {
		this.hindi_external_marks = hindi_external_marks;
	}

	public int getHindi_internal_marks() {
		return hindi_internal_marks;
	}

	public void setHindi_internal_marks(int hindi_internal_marks) {
		this.hindi_internal_marks = hindi_internal_marks;
	}

	public int getMaths_external_marks() {
		return maths_external_marks;
	}

	public void setMaths_external_marks(int maths_external_marks) {
		this.maths_external_marks = maths_external_marks;
	}

	public int getMaths_internal_marks() {
		return maths_internal_marks;
	}

	public void setMaths_internal_marks(int maths_internal_marks) {
		this.maths_internal_marks = maths_internal_marks;
	}

	public int getScience_external_marks() {
		return science_external_marks;
	}

	public void setScience_external_marks(int science_external_marks) {
		this.science_external_marks = science_external_marks;
	}

	public int getScience_internal_marks() {
		return science_internal_marks;
	}

	public void setScience_internal_marks(int science_internal_marks) {
		this.science_internal_marks = science_internal_marks;
	}

	public int getSocial_external_marks() {
		return social_external_marks;
	}

	public void setSocial_external_marks(int social_external_marks) {
		this.social_external_marks = social_external_marks;
	}

	public int getSocial_internal_marks() {
		return social_internal_marks;
	}

	public void setSocial_internal_marks(int social_internal_marks) {
		this.social_internal_marks = social_internal_marks;
	}

}
