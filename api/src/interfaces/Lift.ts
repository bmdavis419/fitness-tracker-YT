import { LiftType } from "./LiftType";
import { Set } from "./Set";

export interface Lift {
  type: LiftType;
  sets: Set[];
  duration: number;
}
