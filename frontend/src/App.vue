<template>
  <v-app>
    <router-view></router-view>

    <p>
    <!-- use router-link component for navigation. -->
    <!-- specify the link by passing the `to` prop. -->
    <!-- `<router-link>` will be rendered as an `<a>` tag by default -->
    <router-link to="/albums">Go to Albums</router-link>
    <br>
    <router-link to="/login">Go to Login</router-link>
    </p>
  </v-app>
</template>

<script>

export default {
  name: 'App',
  components: {
    //
  },

  data: () => ({
    //
  }),
};
</script>
