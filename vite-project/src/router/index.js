import { createRouter, createWebHashHistory } from "vue-router";
import Dashboard from '../views/Dashboard.vue';
import MarketValue from '../views/MarketValue.view.vue';
import MainHome from '../views/MainHome.vue';
import DefaltLayout from '../components/DefaultLayout.vue';

const routes = [
    {
        path: '/',
        name: 'MainHome',
        component: MainHome,
    },
    {
        path: '/dashboard',
        name: 'Dashboard',
        component: DefaltLayout,
        children: [
            {path: '/dashboard', name: 'Dashboard', component: Dashboard}
        ]
    },
    {
        path: '/marketvalue',
        name: 'MarketValue',
        component: MarketValue,
    },
];

const router = createRouter({
    history: createWebHashHistory(),
    routes
});

export default router;