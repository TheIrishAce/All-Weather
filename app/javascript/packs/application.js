// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

require ("jquery");
require ("@popperjs/core");
require ('bootstrap');


Rails.start()
Turbolinks.start()
ActiveStorage.start()

//import "../../assets/stylesheets/application;"
//import "./stylesheets/index.scss"
import "../stylesheets/application.scss"
//import "../stylesheets/bootstrap.css"
//import './bootstrap_js_files.js'
//import "./css/bootstrap.scss"



// document.addEventListener("DOMContentLoaded", function(event) {
//   var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
//   var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
//     return new bootstrap.Popover(popoverTriggerEl)
//   })

//   var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
//   var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
//     return new bootstrap.Tooltip(tooltipTriggerEl)
//   })
// });

// import JQuery from 'jquery';
// window.$ = window.JQuery = JQuery;

