<template>
  <Layout>
    <main class="font-neuzeit text-white container mx-auto mt-16">
      <!-- header -->
      <section class="lg:flex">
        <section class="w-5/12">
          <div>
            <h1 class="leading-none text-gray-400 text-5xl font-semibold">
              We are a community of IT 
              talents and help each 
              other to earn much
              better. It almost
              feels like an illegal hack.
            </h1>
            <p class="text-gray-500 mt-8">
              Earning more money. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Adipisci, delectus ipsam nam sapiente expedita placeat quas, cumque culpa magni sit rem accusamus sint consequatur nisi ipsum fugit maxime quis quibusdam?
            </p>
          </div>
          <div class="mt-8">
            <h2 class="text-gray-400 text-3xl font-semibold">Career due diligence</h2>
            <div class="flex">
              <div class="flex-shrink font-bold text-4xl italic text-teal-700 mt-0">
                "
              </div>
              <div class="ml-2 flex-grow italic text-teal-700 mt-6">
                An outstanding career consists of a series of right decisions. 
                Starting with choosing the right employer at the right time. 
                With our career due diligence we help you to make the right 
                decisions and avoid the wrong ones. And here is the hack: 
                It is not you who pays for this service, but the employers in your career do.
              </div>
            </div>
          </div>
          <section class="mt-8">
            <h3 class="text-gray-400 text-2xl font-semibold leading-tight">
              The most important part in your career is to inform yourself. Research companies
            </h3>
            <ol class="mt-4 text-gray-500">
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
              <h1 class="text-gray-400 text-3xl font-semibold">Our services: free as in beer</h1>
            </div>
            <div class="bg-gray-900 transform duration-500 transition hover:z-50 hover:bg-gray-800 shadow-primary shadow-2xl md:hover:scale-110 my-2 p-6">
              <h2 class="text-gray-400 text-2xl font-semibold">Protection</h2>
              <p class="text-gray-500">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis commodi corporis suscipit ea unde eaque vero optio sunt. Quasi, ipsa quisquam! Eos autem aperiam dolor, quam alias debitis ipsa optio.</p>
            </div>
            <div class="bg-gray-900 transform duration-500 transition hover:z-50 hover:bg-gray-800 shadow-primary shadow-2xl md:hover:scale-110 my-2 p-6">
              <h2 class="text-2xl font-semibold">Coaching</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis commodi corporis suscipit ea unde eaque vero optio sunt. Quasi, ipsa quisquam! Eos autem aperiam dolor, quam alias debitis ipsa optio.</p>
            </div>
            <div class="bg-gray-900 transform duration-500 transition hover:z-50 hover:bg-gray-800 shadow-primary shadow-2xl md:hover:scale-110 my-2 p-6">
              <h2 class="text-2xl font-semibold">Thinking outside the box</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis commodi corporis suscipit ea unde eaque vero optio sunt. Quasi, ipsa quisquam! Eos autem aperiam dolor, quam alias debitis ipsa optio.</p>
            </div>
          </section>
          <section class="mt-8">
            <h2 class="text-2xl text-gray-400 font-semibold leading-tight">
              Join us and get loads of help totally free of charge:
            </h2>
            <ol class="mt-4 text-gray-500">
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
          <button class="mt-8 w-full bg-teal-700 hover:bg-teal-800 text-gray-800 font-semibold py-2 px-4 border border-teal-900 rounded shadow">
            Button
          </button>
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