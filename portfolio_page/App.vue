<template>
  <div class="container mt-5">
    <div class="form-group">
      <label for="message">Enter your text:</label>
      <textarea class="form-control" id="message" v-model="message" rows="5"></textarea>
    </div>
    <button class="btn btn-primary" @click="generateMailtoLink">Create Contact Button</button>

    <!-- Display the mailto link when generated -->
    <div v-if="mailtoLink">
      <p class="mt-3">Mailto Link:</p>
      <a :href="mailtoLink" class="btn btn-success">Contact</a>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      message: '',
      mailtoLink: null,
    };
  },
  methods: {
    generateMailtoLink() {
      // Replace newlines with '%0A' for mailto link
      const mailtoBody = encodeURIComponent(this.message.replace(/\n/g, '%0A'));

      // Replace spaces with '%20' for mailto link
      const mailtoLink = `mailto:recipient@example.com?subject=Contact%20Request&body=${mailtoBody}`;
      this.mailtoLink = mailtoLink;
    },
  },
};
</script>

<style>
/* Add any custom styles here, if needed */
</style>
