package utils;

import java.time.LocalDate;
import java.time.Period;

public class CandidatureUtils {
  public static int calculateAge(LocalDate dob) {
    LocalDate curDate = LocalDate.now();
    
    if (dob != null && curDate != null)
      return Period.between(dob, curDate).getYears(); 
    return 0;
    
  }
}
