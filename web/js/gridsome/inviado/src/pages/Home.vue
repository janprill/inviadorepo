<template>
  <Layout>
    <main class="font-neuzeit text-white container mx-auto">
      <!-- header -->
      <section class="lg:flex items-end">
        <section class="mt-32 text-5xl font-light leading-tight">
          <h1 class=" text-gray-300">
            We are a community of IT 
            talents and help each 
            other to earn much
            better. It almost
            feels like an illegal hack.
          </h1>
        </section>
        <section class="ml-24 italic text-pink-700">
          An outstanding career consists of a series of right decisions. 
          Starting with choosing the right employer at the right time. 
          With our career due diligence we help you to make the right 
          decisions and avoid the wrong ones. And here is the hack: 
          It is not you who pays for this service, but the employers in your career do.
        </section>
      </section>

      <section class="max-w-xl mt-32">
        <section class="">
          <h2 class="text-2xl">
            This community earns you moeny by providing:
          </h2>
          <ol class="mt-4">
            <NumBullet index="1">
              A Chat - invitation only. 
              We arrange jobs for each other, give each other tips and earn 
              the placement bonus that would otherwise go to recruitment agencies. Fully encrypted and highly confidential.
            </NumBullet>
            <NumBullet index="2">
              Financial figures of the most interesting companies and other tools for your "career due diligence", so that you can make the best decisions in your career.
            </NumBullet>
          </ol>
        </section>

        <section class="mt-24">
          <h2 class="text-2xl">
            How does this work exactly?
          </h2>
          <ol class="mt-4">
            <NumBullet index="1">
              Sign up for the newsletter or contact Jan Prill (Founder of Inviado) directly (XING, LinkedIn)
            </NumBullet>
            <NumBullet index="2">
              You are invited to the chat if your an IT Talent and bring something to the table.
            </NumBullet>
            <NumBullet index="3">
              You yourself and every person invited by you, if placed in a great job will earn you a massive placement bonus. The reward scheme is as simple as it is ingenious and has already proven its effectiveness in the DARPA Network Challenge (Red Balloon Challenge).
            </NumBullet>
            <NumBullet index="4">
              See what you can earn and plan what you will do with the earnings.
            </NumBullet>
          </ol>
        </section>
      </section>

      <section class="mt-32">
        Cards
      </section>
    </main>
  </Layout>
</template>

<script>
import NumBullet from '@/components/NumBullet'
export default {
  components: {
    NumBullet
  }
}
</script>