package code;

// Before executing enable assertions :
// https://se-education.org/guides/tutorials/intellijUsefulSettings.html

public class Main {
  public static void main(String[] args) {
    DirectoryAreas.makeAreas();
    DirectoryUserGroups.makeUserGroups();
    new WebServer();
  }
}
