<script setup lang="ts">
import { useRoute } from 'vue-router';

// get the route info
const route = useRoute()


</script>
<template>
    <div class="min-h-screen">
        <div class="flex justify-between px-4 py-2">
            <h1 class="text-third font-bold text-5xl">Fitness Tracker</h1>
            <button class="bg-third font-bold text-white px-3 py-2 rounded-full hover:bg-opacity-50">Logout</button>
        </div>

        <div class="mx-32 border-4 border-primary py-4 px-6 rounded-xl">
            <h2 class="text-center font-bold underline text-primary text-2xl">Session Information</h2>
            <div class="mb-4">
                <label for="day" class="block text-lg ml-4">Day</label>
                <input type="text" id="day" placeholder="push, pull, legs, etc..."
                    class="px-2 py-1 rounded-sm border-2 border-black w-full">
            </div>
            <div class="mb-4">
                <label for="date" class="block text-lg ml-4">Date</label>
                <input type="date" id="date" class="px-2 py-1 rounded-sm border-2 border-black">
            </div>
            <div class="mb-4">
                <label for="location" class="block text-lg ml-4">Location</label>
                <input type="text" id="location" placeholder="push, pull, legs, etc..."
                    class="px-2 py-1 rounded-sm border-2 border-black w-full">
            </div>
        </div>

        <div class="mx-32 bg-secondary">

        </div>

        <div class="text-center absolute text-third font-light italic bottom-0 w-full">Fitness Tracker</div>
    </div>
</template>