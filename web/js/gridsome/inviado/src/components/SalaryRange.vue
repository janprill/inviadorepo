<template>
  <div class="w-full text-gray-800">
    <h2 class="text-2xl text-center font-myriad font-light my-6">
      On which end of your potential salary range would you rather be?
    </h2>
    <div class="w-full bg-primary h-2 mt-16 shadow-xl shadow-primary">
    </div>
    <div class="flex flex-row p-3">
      <div class="flex-grow flex-col w-full">
        <div class="z-40 border-2 shadow-xl shadow-primary w-8 h-8 rounded-full bg-purple-400 -mt-8 ml-16"></div>
        <div class="mt-4">
          Low end of salary range
        </div>
      </div>
      <div class="flex flex-grow flex-col justify-end text-right">
        <div class="w-full flex justify-end">
          <div class="z-50 border-2 shadow-xl shadow-primary w-8 h-8 rounded-full bg-teal-600 -mt-8 mr-0"></div>
        </div>
        <div class="mt-4">
          High
        </div>
      </div>
    </div>

      <!-- 85% -->
    <div class="w-full mt-24">
        <div class="fluentProgressBar-normal" style="width: 85%"></div>
    </div>
  </div>
</template>



