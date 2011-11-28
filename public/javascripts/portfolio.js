/************************************************************************
 * @name: A.K.M. Ashrafuzzaman
 * @author: A.K.M. Ashrafuzzaman
 ************************************************************************/
function attatch_all_popup() {
    $('#portfolios a').click(function() {
        var element_id = $(this).attr("popup-id");
        $('#popup_content' + element_id).openPopup({
            amsl : 50,
            fadeSpeed : 500,
            opacity : 0.8
        });
        return false;
    });
}

$(document).ready(function() {
    attatch_all_popup();
});

$(function() {
    var projects = $('#portfolios');
    var projectsClone = projects.clone();
    $('#tags a').click(function() {
        $('#tags .button').removeClass("active");
        var tag = $(this).html();
        $(this).parent().addClass("active");
        if(tag == 'all') {
            var filteredProjects = projectsClone.find('li');
        } else {
            var filteredProjects = projectsClone.find('li[data-type*=-' + removeSpaces(tag) + '-]');
        }
        projects.quicksand(filteredProjects, {
            duration : 800,
            easing : 'easeInOutQuad'
        }, function() {// when done shuffling
            attatch_all_popup();
        });
    });
});

function removeSpaces(str) {
   return str.split(' ').join('');
}

