<template>
  <div class="alb">
    <p>{{ hellomsg }}</p>
    <!-- Dynamic routing for album ids? -->
    <!-- Use slots? -->
    <Album v-for="album in albums" :key="album.id" :a="album"></Album>
  </div>
</template>
<script>
import Album from '../components/Album.vue'

export default {

  name: 'Albums',
  components: {
    Album
  },
  data () {
    return {
      albums: [],
      hellomsg: "You're in /albums"
    }
   }
  //,
  // mounted () {
  //   axios.get('http://localhost:6060/api/albums')
  //   .then(response => { this.albums = response.data })
  //   .error(e => { console.log(e) })
  // }
}
</script>
