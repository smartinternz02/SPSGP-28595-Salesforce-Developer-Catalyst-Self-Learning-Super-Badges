// 3/4 PARKLOCATOR CLASS
public class ParkLocator {
    
        public static String[] country(String country){
            ParkService.ParksImplPort parks = new ParkService.ParksImplPort();
            String[] parksname = parks.byCountry(country);
            return parksname;
        }
    }