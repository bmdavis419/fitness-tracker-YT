import { Lift } from "./Lift";

export interface Session {
  day: string;
  date: string;
  location: string;
  numExercises: number;
  duration: number;
  lifts: Lift[];
}
