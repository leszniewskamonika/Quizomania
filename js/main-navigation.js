(()=> {
const button = document.querySelector(" .js-main-navigation__mobile-button");
const quizy = document.querySelector(" .js-main-navigation__quizy");

const toggleClass = () =>{
    quizy.classList.toggle("main-navigation__quizy--open");
};

button.addEventListener("click", toggleClass);
quizy.addEventListener("click", toggleClass);
})();