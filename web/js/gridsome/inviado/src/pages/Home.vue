<template>
  <Layout>
    <main class="font-neuzeit text-white container mx-auto mt-16">
      <!-- header -->
      <section class="lg:flex">
        <section class="w-5/12">
          <div>
            <h1 class="leading-tight text-gray-300 text-5xl font-light">
              We are a community of IT 
              talents and help each 
              other to earn much
              better. It almost
              feels like an illegal hack.
            </h1>
            <p>
              Earning more money. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Adipisci, delectus ipsam nam sapiente expedita placeat quas, cumque culpa magni sit rem accusamus sint consequatur nisi ipsum fugit maxime quis quibusdam?
            </p>
          </div>
          <div class="mt-8">
            <h2 class="text-xl">Career due diligence</h2>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et nobis quia repellendus obcaecati tempore, ullam explicabo distinctio tempora consequatur, id accusamus voluptatem quod similique natus, nesciunt reiciendis inventore sapiente minus.
          </div>
          <section class="mt-8">
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
        </section>
        <section class="ml-24 w-7/12">
          <section id="services">
            <div>
              <h1 class="text-3xl">Our services: free as in beer</h1>
            </div>
            <div class="bg-gray-900 mt-8 p-4">
              <h2>Protection</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis commodi corporis suscipit ea unde eaque vero optio sunt. Quasi, ipsa quisquam! Eos autem aperiam dolor, quam alias debitis ipsa optio.</p>
            </div>
            <div class="bg-gray-900 mt-8 p-4">
              <h2>Coaching</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis commodi corporis suscipit ea unde eaque vero optio sunt. Quasi, ipsa quisquam! Eos autem aperiam dolor, quam alias debitis ipsa optio.</p>
            </div>
            <div class="bg-gray-900 mt-8 p-4">
              <h2>Thinking outside the box</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis commodi corporis suscipit ea unde eaque vero optio sunt. Quasi, ipsa quisquam! Eos autem aperiam dolor, quam alias debitis ipsa optio.</p>
            </div>
          </section>
          <section class="mt-8">
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
          <div class="button bg-teal-500 p-3 mt-12">
            button
          </div>
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