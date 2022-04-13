<script setup lang="ts">
import { useRoute } from 'vue-router';

// get the route info
const route = useRoute()


</script>
<template>
    <div>{{ route.params["id"] }}</div>
</template>