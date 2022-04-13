import Home from "../views/Home.vue";
import Dashboard from "../views/Dashboard.vue";
import Lift from "../views/Lift.vue";
import Session from "../views/Session.vue";
import { createRouter, createWebHistory } from "vue-router";

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/dashboard",
    name: "Dashboard",
    component: Dashboard,
  },
  {
    path: "/lift/:id",
    name: "Lift",
    component: Lift,
  },
  {
    path: "/session/:id",
    name: "Session",
    component: Session,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
