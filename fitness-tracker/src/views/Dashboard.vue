<script setup lang="ts">
import DashboardSession from '../components/DashboardSession.vue';
</script>

<template>
    <div class="min-h-screen">
        <div class="flex justify-between px-4 py-2">
            <h1 class="text-third font-bold text-5xl">Fitness Tracker</h1>
            <button class="bg-third font-bold text-white px-3 py-2 rounded-full hover:bg-opacity-50">Logout</button>
        </div>
        <div>
            <h3 class="text-2xl md:ml-48 text-primary md:mt-10">Welcome back, Ben</h3>
        </div>
        <div class="flex px-10 space-x-6 mt-5">
            <div class="flex-none w-1/3 bg-secondary p-4 rounded-lg" id="side-box">
                <h3 class="text-white text-center font-bold underline text-3xl">Personal Info</h3>
                <form class="mt-3 space-y-10">
                    <div class="flex space-x-2">
                        <label for="bodyWeight" class="flex-none text-white font-medium">Body Weight:</label>
                        <input type="text" id="bodyWeight" class="grow px-2" placeholder="weight in LBs">
                    </div>
                    <div class="flex space-x-2">
                        <label for="height" class="flex-none text-white font-medium">Height:</label>
                        <input type="text" id="height" class="grow px-2" placeholder="height in inches">
                    </div>
                    <div class="flex space-x-2">
                        <label for="bodyFat" class="flex-none text-white font-medium">Body Fat:</label>
                        <input type="text" id="bodyFat" class="grow px-2" placeholder="percentage">
                    </div>
                    <div class="flex space-x-2">
                        <label for="calories" class="flex-none text-white font-medium">Estimated Calories:</label>
                        <input type="text" id="calories" class="grow px-2" placeholder="calories">
                    </div>
                    <div class="mb-4">
                        <label for="calories" class="block text-white font-medium">Estimated Calories:</label>
                        <textarea id="calories" class="w-full"></textarea>
                    </div>
                </form>
            </div>
            <div class="grow">
                <DashboardSession />
                <DashboardSession />
                <DashboardSession />
                <DashboardSession />
                <DashboardSession />
                <DashboardSession />
                <DashboardSession />
                <DashboardSession />
            </div>
        </div>
        <div class="text-center absolute text-third font-light italic bottom-0 w-full">Fitness Tracker</div>
    </div>
</template>

<style>
#side-box {
    height: 475px;
}
</style>