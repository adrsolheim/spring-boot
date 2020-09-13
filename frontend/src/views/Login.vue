<template>
  <v-main>
      <v-container fluid fill-height>
        <v-layout align-center justify-center>
          <v-flex xs12 sm8 md4>
            <v-card-text>
              <v-form ref="form" v-model="valid">
                <v-text-field
                  prepend-icon="person"
                  v-on:keyup.enter="login"
                  v-model="credentials.username"
                  :counter="10"
                  label="Username"
                  required
                ></v-text-field>
                <v-text-field
                  prepend-icon="lock"
                  v-on:keyup.enter="login"
                  v-model="credentials.password"
                  label="Password"
                  :append-icon="show1 ? 'mdi-eye' : 'mdi-eye-off'"
                  :type="show1 ? 'text' : 'password'"
                  @click:append="show1 = !show1"
                  hint="Minimum 8 characters"
                  required
                ></v-text-field>
                <v-btn
                  color="success"
                  class="mr-4"
                  @click="login"
                >
                  Validate
                </v-btn>
                <ul>
                  <li v-for="user in users" :key="user">{{ user }}</li>
                </ul>
              </v-form>
            </v-card-text>
          </v-flex>
        </v-layout>
      </v-container>
    </v-main>
</template>
<script>
export default {
  name: 'Login',
  data () {
    return {
      credentials: {
        username: '',
        password: ''
      },
      users: [],
      msg: '',
      show1: false,
      valid: true,
      lazy: false
    }
  },
  methods: {
    login: function () {
      this.msg = 'Logged in!'
      this.users.push(this.credentials.username)
      this.credentials.username = ''
      this.credentials.password = ''
    }
  }
}
</script>
