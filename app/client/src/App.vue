<template>
  <v-app id="app">
    <v-navigation-drawer
      v-model="drawer"
      app
    >
      <v-list dense>
        <v-list-item link>
          <v-list-item-action>
            <v-icon>mdi-play</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title>Point 1</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
        <v-list-item link>
          <v-list-item-action>
            <v-icon>mdi-play</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title>Point 2</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar
      app
      color="indigo"
      dark
    >
      <v-app-bar-nav-icon @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
      <v-toolbar-title>Vue App</v-toolbar-title>
    </v-app-bar>

    <!-- Sizes your content based upon application components -->
    <v-main>

      <!-- Provides the application the proper gutter -->
      <router-view></router-view>
    </v-main>

    <!--v-footer
      color="indigo"
      app
    >
      <span class="white--text">In Data We Trust?</span>
    </v-footer-->
  </v-app>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #182a3d;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #35597c;
}

#nav a.router-link-exact-active {
  color: #26af72;
}
</style>

<script>

export default {
  props: {
    source: String
  },
  data: () => ({
    drawer: null
  })
}
</script>
