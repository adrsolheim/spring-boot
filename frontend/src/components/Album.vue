<template>
  <div class="album">
    <p v-text="album.id"></p>
    <p v-text="album.title"></p>
    <p v-text="album.zartist"></p>
  </div>
</template>
<script>
export default {
  name: 'Album',
  props: ['a'],
  data () {
    return {
      album: this.a
    }
  }
}
</script>
