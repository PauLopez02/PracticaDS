package code;

import java.util.ArrayList;

/**
 * Class that represents a subdivision of an area.
 * is part of the Composite pattern.
 */
public class Partition extends Area {
  ArrayList<Area> areas = new ArrayList<>();

  public Partition(String id, Area parentArea) {
    super(id, parentArea);
  }

  public ArrayList<Door> getDoorsGivingAccess() {
    ArrayList<Door> doors = new ArrayList<>();
    for (Area area : areas) {
      if (area instanceof Partition) {
        area.getDoorsGivingAccess();
      } else {
        doors.addAll(area.getDoorsGivingAccess());
      }
    }

    return doors;
  }
}
