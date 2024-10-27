document.addEventListener("DOMContentLoaded", function () {
  const signInBtn = document.querySelector(".m-in");
  const signUpBtn = document.querySelector(".m-up");
  const container = document.querySelector(".cont");

  signUpBtn.addEventListener("click", () => {
    container.classList.add("sign-up-mode");
  });

  signInBtn.addEventListener("click", () => {
    container.classList.remove("sign-up-mode");
  });

  // Add an event listener for the Sign In button
  const signInForm = document.querySelector(".sign-in form");
  signInForm.addEventListener("submit", function (e) {
    e.preventDefault();
    // You can add your logic to handle Sign In here
    console.log("Sign In clicked");
    // Example: Perform AJAX request or other actions
  });

  // Add an event listener for the Sign Up button
  const signUpForm = document.querySelector(".sign-up form");
  signUpForm.addEventListener("submit", function (e) {
    e.preventDefault();
    // You can add your logic to handle Sign Up here
    console.log("Sign Up clicked");
    // Example: Perform AJAX request or other actions
  });
});





//document.querySelector('.img-btn').addEventListener('click', function()
	//{
		//document.querySelector('.cont').classList.toggle('s-signup')
	//}
//);
