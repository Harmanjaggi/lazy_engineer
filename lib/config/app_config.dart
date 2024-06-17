/// [AppConfig] App config class
class AppConfig {
  static const String playstoreId = "in.lazyEngineer.lazyEngineer";
  static const String email = 'harmanjaggi2001@gmail.com';
  static const String linkdin = '/harman-jaggi-2001';
  static const String linkdinUrl =
      'https://www.linkedin.com/in/harman-jaggi-2001';
  static const String resumeLink =
      'https://docs.google.com/document/d/1M8o6ghvtMluBYG8vfWd0jE7Z_OfWi-XjQ1YlyR2_BLo/edit?usp=sharing';

  /// app data
  static const String apiBaseUrl = 'https://api.lazyengineer.in';
  static const String signUp = '/auth/signUp';
  static const String signIn = '/auth/signIn';
  static const String signOut = '/auth/signOut';

  /// home
  static const String user = '/home/user';
  static const String notice = '/alert';
  static const String account = '/auth/verifyToken';
  static const String updateProfile = '/auth/updateUser';
  static const String notes = '/note';
  static const String notesSearch = '/home/notes/search';
  static const String notesFilter = '/home/notes/filter';
  static const String notesDetail = '/home/notes/notesDetail';
  static const String files = '/practicle_file';
  static const String filesSearch = '/home/files/search';
  static const String filesFilter = '/home/files/filter';
  static const String filesDetail = '/home/files/filesDetail';
  static const String papers = '/question_paper';
  static const String papersSearch = '/home/papers/search';
  static const String papersFilter = '/home/papers/filter';
  static const String papersDetail = '/home/papers/filesDetail';
  static const String jobs = '/jobs';
  static const String jobsSearch = '/home/jobs/search';
  static const String jobsFilter = '/home/jobs/filter';
  static const String jobsDetail = '/home/jobs/filesDetail';
  static const String books = '/books';
  static const String booksSearch = '/home/books/search';
  static const String booksFilter = '/home/books/filter';
  static const String booksDetail = '/home/books/filesDetail';

  /// upload
  static const String uploadNotes = '/note';
  static const String uploadFiles = '/practicle_file';
  static const String uploadQuestionPaper = '/question_paper';
  static const String uploadBooks = '/books';
  static const String uploadJobs = '/jobs';

  /// favourites
  static const String favourites = '/favourite';

  /// tag
  static const String companyPhotoTag = 'company_photo';

  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
}
