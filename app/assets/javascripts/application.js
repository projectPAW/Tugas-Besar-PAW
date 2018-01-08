// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//
//= require jquery
//= require popper
//= require bootstrap-sprockets

function yesnoCheck() {

    if (document.getElementById("jurusanIPA").checked) {
        document.getElementById("jurIPA").style.display = "block";
    }
    else document.getElementById("jurIPA").style.display = "none";

    if (document.getElementById("jurusanIPS").checked) {
        document.getElementById("jurIPS").style.display = "block";
    }
    else document.getElementById("jurIPS").style.display = "none";

    if (document.getElementById("jurusanBahasa").checked) {
        document.getElementById("jurBahasa").style.display = "block";
    }
    else document.getElementById("jurBahasa").style.display = "none";
}
