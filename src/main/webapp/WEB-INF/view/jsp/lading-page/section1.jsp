<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="relative bg-white overflow-hidden">
	<div class="max-w-7xl mx-auto">
		<div
			class="relative z-10 bg-white lg:max-w-2xl lg:w-full">
			<svg
				class="hidden lg:block absolute right-0 inset-y-0 h-screen w-48 text-white transform translate-x-1/2"
				fill="currentColor" viewBox="0 0 100 100" preserveAspectRatio="none"
				aria-hidden="true">
        <polygon points="50,0 100,0 50,100 0,100" />
      </svg>

			<div>
				<div class="relative pt-6 px-4"></div>

				<div
					class="absolute z-10 top-0 inset-x-0 p-2 transition transform origin-top-right md:hidden">
					<div
						class="rounded-lg shadow-md bg-white ring-1 ring-black ring-opacity-5 overflow-hidden">
						<div class="px-5 pt-4 flex items-center justify-between">
							<div>
								<img class="h-8 w-auto"
									src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg"
									alt="">
							</div>
							<div class="-mr-2">
								<button type="button"
									class="bg-white rounded-md p-2 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500">
									<span class="sr-only">Close main menu</span>
									<!-- Heroicon name: outline/x -->
									<svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg"
										fill="none" viewBox="0 0 24 24" stroke="currentColor"
										aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round"
											stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                  </svg>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>

			<main
				class="max-w-7xl px-4 mt-24 lg:h-screen flex justify-center items-center lg:mt-0">
				<div class="sm:text-center lg:text-left">
					<h1
						class="text-4xl tracking-tight font-extrabold text-gray-900 sm:text-5xl md:text-6xl">
						<span class="block xl:inline">New Mercedes S Class</span> <span
							class="block text-indigo-600 xl:inline">S-450</span>
					</h1>
					<p
						class="mt-3 text-base text-gray-500 sm:mt-5 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-xl lg:mx-0">Anim
						aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem
						cupidatat commodo. Elit sunt amet fugiat veniam occaecat fugiat
						aliqua.</p>
					<div
						class="mt-5 sm:mt-8 sm:flex sm:justify-center lg:justify-start">
						<div class="rounded-md shadow">
							<a href="#"
								class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 md:py-4 md:text-lg md:px-10">
                More Details</a>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
	<div class="lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2">
		<img
			class="h-56 w-full object-cover sm:h-72 md:h-96 lg:w-full lg:h-screen"
      src='<c:url value="/resources/assets/media/all-new-s-class-teaser.webp" />'
			alt="">
	</div>
</div>
